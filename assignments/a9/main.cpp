#include "Common.h"
#include "OpenGLCommon.h"
#include "OpenGLMarkerObjects.h"
#include "OpenGLBgEffect.h"
#include "OpenGLMesh.h"
#include "OpenGLViewer.h"
#include "OpenGLWindow.h"
#include "TinyObjLoader.h"
#include "OpenGLSkybox.h"
#include <algorithm>
#include <iostream>
#include <random>
#include <unordered_set>
#include <vector>
#include <string>

#ifndef __Main_cpp__
#define __Main_cpp__

#ifdef __APPLE__
#define CLOCKS_PER_SEC 100000
#endif

class MyDriver : public OpenGLViewer
{
    std::vector<OpenGLTriangleMesh *> mesh_object_array;
    OpenGLBgEffect *bgEffect = nullptr;
    OpenGLSkybox *skybox = nullptr;
    clock_t startTime;

    OpenGLTriangleMesh* broom_ptr = nullptr;
    OpenGLTriangleMesh* hat_ptr = nullptr;
    std::vector<std::vector<Vector3>> hat_frame_vertices;
    std::vector<std::vector<Vector3i>> hat_frame_elements;
    std::vector<OpenGLTriangleMesh*> candles;
    std::vector<Vector3f> candle_base_positions;
    int frame = 0;  
    float candle_scale = 0.9f;
    float frame_duration = 1.0f;  
    int current_hat_frame = 0;   


public:
    virtual void Initialize()
    {
        draw_axes = false;
        startTime = clock();
        OpenGLViewer::Initialize();
    }

    virtual void Initialize_Data()
    {
        //// Load all the shaders you need for the scene 
        //// In the function call of Add_Shader_From_File(), we specify three names: 
        //// (1) vertex shader file name
        //// (2) fragment shader file name
        //// (3) shader name used in the shader library
        //// When we bind a shader to an object, we implement it as follows:
        //// object->Add_Shader_Program(OpenGLShaderLibrary::Get_Shader("shader_name"));
        //// Here "shader_name" needs to be one of the shader names you created previously with Add_Shader_From_File()

        OpenGLShaderLibrary::Instance()->Add_Shader_From_File("shaders/basic.vert", "shaders/basic.frag", "basic");
        OpenGLShaderLibrary::Instance()->Add_Shader_From_File("shaders/basic.vert", "shaders/environment.frag", "environment");
        OpenGLShaderLibrary::Instance()->Add_Shader_From_File("shaders/stars.vert", "shaders/stars.frag", "stars");
        OpenGLShaderLibrary::Instance()->Add_Shader_From_File("shaders/basic.vert", "shaders/alphablend.frag", "blend");
        OpenGLShaderLibrary::Instance()->Add_Shader_From_File("shaders/billboard.vert", "shaders/alphablend.frag", "billboard");
        OpenGLShaderLibrary::Instance()->Add_Shader_From_File("shaders/terrain.vert", "shaders/terrain.frag", "terrain");
        OpenGLShaderLibrary::Instance()->Add_Shader_From_File("shaders/skybox.vert", "shaders/skybox.frag", "skybox");

        //// Load all the textures you need for the scene
        //// In the function call of Add_Shader_From_File(), we specify two names:
        //// (1) the texture's file name
        //// (2) the texture used in the texture library
        //// When we bind a texture to an object, we implement it as follows:
        //// object->Add_Texture("tex_sampler", OpenGLTextureLibrary::Get_Texture("tex_name"));
        //// Here "tex_sampler" is the name of the texture sampler2D you used in your shader, and
        //// "tex_name" needs to be one of the texture names you created previously with Add_Texture_From_File()

        OpenGLTextureLibrary::Instance()->Add_Texture_From_File("tex/earth_color.png", "sphere_color");
        OpenGLTextureLibrary::Instance()->Add_Texture_From_File("tex/earth_normal.png", "sphere_normal");
        OpenGLTextureLibrary::Instance()->Add_Texture_From_File("tex/bunny_color.jpg", "bunny_color");
        OpenGLTextureLibrary::Instance()->Add_Texture_From_File("tex/bunny_normal.png", "bunny_normal");
        OpenGLTextureLibrary::Instance()->Add_Texture_From_File("tex/window.png", "window_color");
        OpenGLTextureLibrary::Instance()->Add_Texture_From_File("tex/buzz_color.png", "buzz_color");
        OpenGLTextureLibrary::Instance()->Add_Texture_From_File("tex/star.png", "star_color");
        OpenGLTextureLibrary::Instance()->Add_Texture_From_File("tex/hat_color.jpg", "hat_color");
        OpenGLTextureLibrary::Instance()->Add_Texture_From_File("tex/hat_normal.jpeg", "hat_normal");
        OpenGLTextureLibrary::Instance()->Add_Texture_From_File("tex/FinalBackground.png", "background_image");
        OpenGLTextureLibrary::Instance()->Add_Texture_From_File("tex/broom_color.jpeg", "broom_color");
        OpenGLTextureLibrary::Instance()->Add_Texture_From_File("tex/broom_normal.jpeg", "broom_normal");
        OpenGLTextureLibrary::Instance()->Add_Texture_From_File("tex/window2_color.jpg", "window2_color");






        //// Add all the lights you need for the scene (no more than 4 lights)
        //// The four parameters are position, ambient, diffuse, and specular.
        //// The lights you declared here will be synchronized to all shaders in uniform lights.
        //// You may access these lights using lt[0].pos, lt[1].amb, lt[1].dif, etc.
        //// You can also create your own lights by directly declaring them in a shader without using Add_Light().
        //// Here we declared three default lights for you. Feel free to add/delete/change them at your will.

        opengl_window->Add_Light(Vector3f(3, 1, 3), Vector3f(0.1, 0.1, 0.1), Vector3f(1, 1, 1), Vector3f(0.5, 0.5, 0.5)); 
        opengl_window->Add_Light(Vector3f(0, 0, -5), Vector3f(0.1, 0.1, 0.1), Vector3f(0.9, 0.9, 0.9), Vector3f(0.5, 0.5, 0.5));
        opengl_window->Add_Light(Vector3f(-5, 1, 3), Vector3f(0.1, 0.1, 0.1), Vector3f(0.9, 0.9, 0.9), Vector3f(0.5, 0.5, 0.5));

        //// Add the background / environment
        //// Here we provide you with four default options to create the background of your scene:
        //// (1) Gradient color (like A1 and A2; if you want a simple background, use this one)
        //// (2) Programmable Canvas (like A7 and A8; if you consider implementing noise or particles for the background, use this one)
        //// (3) Sky box (cubemap; if you want to load six background images for a skybox, use this one)
        //// (4) Sky sphere (if you want to implement a sky sphere, enlarge the size of the sphere to make it colver the entire scene and update its shaders for texture colors)
        //// By default, Option (2) (Buzz stars) is turned on, and all the other three are commented out.
       
        
        //// Background Option (1): Gradient color
        /*
        {
            auto bg = Add_Interactive_Object<OpenGLBackground>();
            bg->Set_Color(OpenGLColor(0.1f, 0.1f, 0.1f, 1.f), OpenGLColor(0.3f, 0.1f, .1f, 1.f));
            bg->Initialize();
        }
        */

        //// Background Option (2): Programmable Canvas
        //// By default, we load a GT buzz + a number of stars
        // {
        //     bgEffect = Add_Interactive_Object<OpenGLBgEffect>();
        //     bgEffect->Add_Shader_Program(OpenGLShaderLibrary::Get_Shader("stars"));
        //     bgEffect->Add_Texture("tex_buzz", OpenGLTextureLibrary::Get_Texture("buzz_color")); // bgEffect can also Add_Texture
        //     bgEffect->Initialize();
        // }
        
        //// Background Option (3): Sky box
        //// Here we provide a default implementation of a sky box; customize it for your own sky box
        /*
        {
            // from https://www.humus.name/index.php?page=Textures
            const std::vector<std::string> cubemap_files{
                "cubemap/posx.jpg",     //// + X
                "cubemap/negx.jpg",     //// - X
                "cubemap/posy.jpg",     //// + Y
                "cubemap/negy.jpg",     //// - Y
                "cubemap/posz.jpg",     //// + Z
                "cubemap/negz.jpg",     //// - Z 
            };
            OpenGLTextureLibrary::Instance()->Add_CubeMap_From_Files(cubemap_files, "cube_map");

            skybox = Add_Interactive_Object<OpenGLSkybox>();
            skybox->Add_Shader_Program(OpenGLShaderLibrary::Get_Shader("skybox"));
            skybox->Initialize();
        }
        */

        //// Background Option (4): Sky sphere
        //// Here we provide a default implementation of a textured sphere; customize it for your own sky sphere
        // {
        //     //// create object by reading an obj mesh
        //     auto sphere = Add_Obj_Mesh_Object("obj/sphere.obj");

        //     //// set object's transform
        //     Matrix4f t;
        //     t << 1, 0, 0, -1.5,
        //         0, 1, 0, -1,
        //         0, 0, 1, 0.5,
        //         0, 0, 0, 1;
        //     sphere->Set_Model_Matrix(t);

        //     //// set object's material
        //     sphere->Set_Ka(Vector3f(0.1, 0.1, 0.1));
        //     sphere->Set_Kd(Vector3f(0.7, 0.7, 0.7));
        //     sphere->Set_Ks(Vector3f(2, 2, 2));
        //     sphere->Set_Shininess(128);

        //     //// bind texture to object
        //     sphere->Add_Texture("tex_color", OpenGLTextureLibrary::Get_Texture("sphere_color"));
        //     sphere->Add_Texture("tex_normal", OpenGLTextureLibrary::Get_Texture("sphere_normal"));

        //     //// bind shader to object
        //     sphere->Add_Shader_Program(OpenGLShaderLibrary::Get_Shader("basic"));
        // }
        {
            // Make sure these files exist in "cubemap/" directory or adjust paths
            const std::vector<std::string> cubemap_files{
                "cubemap/right1.jpg", // posx
                "cubemap/left1.jpg",  // negx
                "cubemap/up1.jpg",    // posy
                "cubemap/negy.jpg",  // negy
                "cubemap/back2.jpg", // posz
                "cubemap/front1.jpg"   // negz
            };
            OpenGLTextureLibrary::Instance()->Add_CubeMap_From_Files(cubemap_files, "cube_map");

            skybox = Add_Interactive_Object<OpenGLSkybox>();
            skybox->Add_Shader_Program(OpenGLShaderLibrary::Get_Shader("skybox"));
            skybox->Initialize();
        }

            // Candle positions
        candle_base_positions = {
            Vector3f(-0.3f, 0.4f, -0.2f),
            Vector3f(-0.1f, 0.3f, -0.2f),
            Vector3f( 0.3f, 0.3f, -0.2f),
            Vector3f( 0.6f, 0.4f, -0.2f)
        };
        candle_scale = 0.9f;

        // Create candles
        for (int i = 0; i < 4; i++) {
            auto candle = Add_Obj_Mesh_Object("obj/candle.obj");
            float x = candle_base_positions[i][0];
            float y = candle_base_positions[i][1];
            float z = candle_base_positions[i][2];

            Matrix4f cT;
            cT << candle_scale, 0,          0,     x,
                  0,           candle_scale,       0,     y,
                  0,           0,          candle_scale, z,
                  0,           0,          0,     1;

            candle->Set_Model_Matrix(cT);
            candle->Set_Ka(Vector3f(0.2f, 0.2f, 0.2f));
            candle->Set_Kd(Vector3f(0.8f, 0.8f, 0.8f));
            candle->Set_Ks(Vector3f(1, 1, 1));
            candle->Set_Shininess(64);
            candle->Add_Shader_Program(OpenGLShaderLibrary::Get_Shader("basic"));

            candles.push_back(candle);
        }

        //// Here we load a bunny object with the basic shader to show how to add an object into the scene
           {
            std::vector<std::string> hat_frame_files = {
                "obj/frame1.obj",
                "obj/frame2.obj",
                "obj/frame3.obj",
                "obj/frame4.obj"
            };

            // Load first frame as base mesh
            hat_ptr = Add_Obj_Mesh_Object(hat_frame_files[0]);
            
            // Store vertices and elements from all frames
            for(const auto& obj_file : hat_frame_files) {
                Array<std::shared_ptr<TriangleMesh<3>>> meshes;
                Obj::Read_From_Obj_File_Discrete_Triangles(obj_file, meshes);
                hat_frame_vertices.push_back(meshes[0]->Vertices());
                hat_frame_elements.push_back(meshes[0]->Elements());
            }

            // Setup the base mesh
            Matrix4f t;
            t << 0.02, 0, 0, 0,
                 0, 0.02, 0, 0,
                 0, 0, 0.02, 0,
                 0, 0, 0, 1;
            hat_ptr->Set_Model_Matrix(t);

            hat_ptr->Set_Ka(Vector3f(0.1, 0.1, 0.1));
            hat_ptr->Set_Kd(Vector3f(0.7, 0.7, 0.7));
            hat_ptr->Set_Ks(Vector3f(2, 2, 2));
            hat_ptr->Set_Shininess(128);

            hat_ptr->Add_Texture("tex_color", OpenGLTextureLibrary::Get_Texture("hat_color"));
            hat_ptr->Add_Texture("tex_normal", OpenGLTextureLibrary::Get_Texture("hat_normal"));
            hat_ptr->Add_Shader_Program(OpenGLShaderLibrary::Get_Shader("basic"));
        }
            {
            broom_ptr = Add_Obj_Mesh_Object("obj/broom.obj");

            Matrix4f t;

            t << 0.05, 0, 0, 0,
                0, 0.05, 0, -0.5,
                0, 0, 0.05, 0.5,
                0, 0, 0, 1;
            broom_ptr->Set_Model_Matrix(t);

            broom_ptr->Set_Ka(Vector3f(0.1, 0.1, 0.1));
            broom_ptr->Set_Kd(Vector3f(0.7, 0.7, 0.7));
            broom_ptr->Set_Ks(Vector3f(2, 2, 2));
            broom_ptr->Set_Shininess(128);
            broom_ptr->Add_Texture("tex_color", OpenGLTextureLibrary::Get_Texture("broom_color"));
            broom_ptr->Add_Texture("tex_normal", OpenGLTextureLibrary::Get_Texture("broom_normal"));
            broom_ptr->Add_Shader_Program(OpenGLShaderLibrary::Get_Shader("basic"));
        }

        // {
        //     //// create object by reading an obj mesh
        //     auto bunny = Add_Obj_Mesh_Object("obj/bunny.obj");

        //     //// set object's transform
        //     Matrix4f t;
        //     t << 1, 0, 0, 1.5,
        //         0, 1, 0, 0,
        //         0, 0, 1, 0,
        //         0, 0, 0, 1;
        //     bunny->Set_Model_Matrix(t);

        //     //// set object's material
        //     bunny->Set_Ka(Vector3f(0.1, 0.1, 0.1));
        //     bunny->Set_Kd(Vector3f(0.7, 0.7, 0.7));
        //     bunny->Set_Ks(Vector3f(2, 2, 2));
        //     bunny->Set_Shininess(128);

        //     //// bind texture to object
        //     bunny->Add_Texture("tex_color", OpenGLTextureLibrary::Get_Texture("bunny_color"));
        //     bunny->Add_Texture("tex_normal", OpenGLTextureLibrary::Get_Texture("bunny_normal"));

        //     //// bind shader to object
        //     bunny->Add_Shader_Program(OpenGLShaderLibrary::Get_Shader("basic"));
        // }

        //// Here we show an example of adding a mesh with noise-terrain (A6)
        // {
        //     //// create object by reading an obj mesh
        //     auto terrain = Add_Obj_Mesh_Object("obj/plane.obj");

        //     //// set object's transform
        //     Matrix4f r, s, t;
        //     r << 1, 0, 0, 0,
        //         0, 0.5, 0.67, 0,
        //         0, -0.67, 0.5, 0,
        //         0, 0, 0, 1;
        //     s << 0.5, 0, 0, 0,
        //         0, 0.5, 0, 0,
        //         0, 0, 0.5, 0,
        //         0, 0, 0, 1;
        //     t << 1, 0, 0, -2,
        //          0, 1, 0, 0.5,
        //          0, 0, 1, 0,
        //          0, 0, 0, 1,
        //     terrain->Set_Model_Matrix(t * s * r);

        //     //// set object's material
        //     terrain->Set_Ka(Vector3f(0.1f, 0.1f, 0.1f));
        //     terrain->Set_Kd(Vector3f(0.7f, 0.7f, 0.7f));
        //     terrain->Set_Ks(Vector3f(1, 1, 1));
        //     terrain->Set_Shininess(128.f);

        //     //// bind shader to object (we do not bind texture for this object because we create noise for texture)
        //     terrain->Add_Shader_Program(OpenGLShaderLibrary::Get_Shader("terrain"));
        // }

        //// Here we show an example of adding a transparent object with alpha blending
        //// This example will be useful if you implement objects such as tree leaves, grass blades, flower pedals, etc.
        //// Alpha blending will be turned on automatically if your texture has the alpha channel
        {
            //// create object by reading an obj mesh
            auto sqad = Add_Obj_Mesh_Object("obj/sqad.obj");

            //// set object's transform
            Matrix4f t;
            t << 2, 0, 0, -1,
                0, 2, 0, -1,
                0, 0, 2, -3,
                0, 0, 0, 1;
            sqad->Set_Model_Matrix(t);

            //// bind texture to object
            sqad->Add_Texture("tex_color", OpenGLTextureLibrary::Get_Texture("window2_color"));

            //// bind shader to object
            sqad->Add_Shader_Program(OpenGLShaderLibrary::Get_Shader("blend"));
        }

        //// Here we show an example of adding a billboard particle with a star shape using alpha blending
        //// The billboard is rendered with its texture and is always facing the camera.
        //// This example will be useful if you plan to implement a CPU-based particle system.
        // {
        //     //// create object by reading an obj mesh
        //     auto sqad = Add_Obj_Mesh_Object("obj/sqad.obj");

        //     //// set object's transform
        //     Matrix4f t;
        //     t << 1, 0, 0, 0,
        //          0, 1, 0, 0,
        //          0, 0, 1, 2.5,
        //          0, 0, 0, 1;
        //     sqad->Set_Model_Matrix(t);

        //     //// bind texture to object
        //     sqad->Add_Texture("tex_color", OpenGLTextureLibrary::Get_Texture("star_color"));

        //     //// bind shader to object
        //     sqad->Add_Shader_Program(OpenGLShaderLibrary::Get_Shader("billboard"));
        // }

        //// Here we show an example of shading (ray-tracing) a sphere with environment mapping
        /*
        {
            //// create object by reading an obj mesh
            auto sphere2 = Add_Obj_Mesh_Object("obj/sphere.obj");

            //// set object's transform
            Matrix4f t;
            t << .6, 0, 0, 0,
                0, .6, 0, -.5,
                0, 0, .6, 1,
                0, 0, 0, 1;
            sphere2->Set_Model_Matrix(t);

            //// bind shader to object
            sphere2->Add_Shader_Program(OpenGLShaderLibrary::Get_Shader("environment")); // bind shader to object
        }
        */

        //// Here we create a mesh object with two triangle specified using a vertex array and a triangle array.
        //// This is an example showing how to create a mesh object without reading an .obj file. 
        //// If you are creating your own L-system, you may use this function to visualize your mesh.
        // {
        //     std::vector<Vector3> vertices = { Vector3(0.5, 0, 0), Vector3(1, 0, 0), Vector3(1, 1, 0), Vector3(0, 1, 0) };
        //     std::vector<Vector3i> elements = { Vector3i(0, 1, 2), Vector3i(0, 2, 3) };
        //     auto obj = Add_Tri_Mesh_Object(vertices, elements);
        //     // ! you can also set uvs 
        //     obj->mesh.Uvs() = { Vector2(0, 0), Vector2(1, 0), Vector2(1, 1), Vector2(0, 1) };

        //     Matrix4f t;
        //     t << 1, 0, 0, -0.5,
        //         0, 1, 0, -1.5,
        //         0, 0, 1, 0,
        //         0, 0, 0, 1;

        //     obj->Set_Model_Matrix(t);

        //     obj->Add_Texture("tex_color", OpenGLTextureLibrary::Get_Texture("buzz_color"));

        //     obj->Add_Shader_Program(OpenGLShaderLibrary::Get_Shader("basic"));
        // }

        //// This for-loop updates the rendering model for each object on the list
        for (auto &mesh_obj : mesh_object_array){
            Set_Polygon_Mode(mesh_obj, PolygonMode::Fill);
            Set_Shading_Mode(mesh_obj, ShadingMode::TexAlpha);
            mesh_obj->Set_Data_Refreshed();
            mesh_obj->Initialize();
        }
        Toggle_Play();
    }

    //// add mesh object by reading an .obj file
    OpenGLTriangleMesh *Add_Obj_Mesh_Object(std::string obj_file_name)
    {
        auto mesh_obj = Add_Interactive_Object<OpenGLTriangleMesh>();
        Array<std::shared_ptr<TriangleMesh<3>>> meshes;
        // Obj::Read_From_Obj_File(obj_file_name, meshes);
        Obj::Read_From_Obj_File_Discrete_Triangles(obj_file_name, meshes);

        mesh_obj->mesh = *meshes[0];
        std::cout << "load tri_mesh from obj file, #vtx: " << mesh_obj->mesh.Vertices().size() << ", #ele: " << mesh_obj->mesh.Elements().size() << std::endl;

        mesh_object_array.push_back(mesh_obj);
        return mesh_obj;
    }

    //// add mesh object by reading an array of vertices and an array of elements
    OpenGLTriangleMesh* Add_Tri_Mesh_Object(const std::vector<Vector3>& vertices, const std::vector<Vector3i>& elements)
    {
        auto obj = Add_Interactive_Object<OpenGLTriangleMesh>();
        mesh_object_array.push_back(obj);
        // set up vertices and elements
        obj->mesh.Vertices() = vertices;
        obj->mesh.Elements() = elements;

        return obj;
    }

    //// Go to next frame
    virtual void Toggle_Next_Frame()
    {

   float current_time = GLfloat(clock() - startTime) / CLOCKS_PER_SEC;
        if(hat_ptr && !hat_frame_vertices.empty()) {
            int new_frame = int(current_time / frame_duration) % hat_frame_vertices.size();
            
            if(new_frame != current_hat_frame) {
                hat_ptr->mesh.Vertices() = hat_frame_vertices[new_frame];
                hat_ptr->mesh.Elements() = hat_frame_elements[new_frame];
                hat_ptr->Set_Data_Refreshed();
                current_hat_frame = new_frame;
            }
            
            float y_offset = 0.1f * sin(current_time * 0.8f);
            Matrix4f t;
            t << 0.02, 0, 0, 0,
                 0, 0.02, 0, y_offset,
                 0, 0, 0.02, 0,
                 0, 0, 0, 1;
            hat_ptr->Set_Model_Matrix(t);
        }

        if (broom_ptr) {
        float y_offset = 0.1f * sin(current_time); 
        float z_offset = 0.1f * cos(current_time);  
        float tilt = 15.0f * sin(current_time * 0.5f) * (3.14159f/180.0f);  
    
        float rock_angle = 10.0f * sin(current_time * 0.7f) * (3.14159f/180.0f);
        float cos_r = cos(rock_angle);
        float sin_r = sin(rock_angle);
        
        float cos_t = cos(tilt);
        float sin_t = sin(tilt);
        
        Matrix4f t;
        t << 0.05 * cos_r, -0.05 * sin_r, 0, 0,
            0.05 * sin_r * cos_t, 0.05 * cos_r * cos_t, -0.05 * sin_t, -0.5 + y_offset,
            0.05 * sin_r * sin_t, 0.05 * cos_r * sin_t, 0.05 * cos_t, 0.5 + z_offset,
            0, 0, 0, 1;
        broom_ptr->Set_Model_Matrix(t);
    }   
        // Animate candles (only candle code changed)
        for (size_t i = 0; i < candles.size(); i++) {
            float x = candle_base_positions[i][0];
            float base_y = candle_base_positions[i][1];
            float z = candle_base_positions[i][2];

            float bobbing = 0.05f * sin((current_time*2.0f) + (float)i);
            float new_y = base_y + bobbing;

            Matrix4f cT;
            cT << candle_scale, 0,           0,           x,
                  0,           0.2f,        0,           new_y,
                  0,           0,           candle_scale, z,
                  0,           0,           0,           1;

            candles[i]->Set_Model_Matrix(cT);
        }

        for (auto &mesh_obj : mesh_object_array)
            mesh_obj->setTime(GLfloat(clock() - startTime) / CLOCKS_PER_SEC);

        if (bgEffect){
            bgEffect->setResolution((float)Win_Width(), (float)Win_Height());
            bgEffect->setTime(GLfloat(clock() - startTime) / CLOCKS_PER_SEC);
            bgEffect->setFrame(frame++);
        }

        if (skybox){
            skybox->setTime(GLfloat(clock() - startTime) / CLOCKS_PER_SEC);
        }   

        OpenGLViewer::Toggle_Next_Frame();
    }

    virtual void Run()
    {
        OpenGLViewer::Run();
    }
};

int main(int argc, char *argv[])
{
    MyDriver driver;
    driver.Initialize();
    driver.Run();
}

#endif
