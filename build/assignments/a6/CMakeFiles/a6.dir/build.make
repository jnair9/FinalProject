# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.30.5/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.30.5/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/songyuanliu/desktop/FinalProject

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/songyuanliu/desktop/FinalProject/build

# Include any dependencies generated for this target.
include assignments/a6/CMakeFiles/a6.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include assignments/a6/CMakeFiles/a6.dir/compiler_depend.make

# Include the progress variables for this target.
include assignments/a6/CMakeFiles/a6.dir/progress.make

# Include the compile flags for this target's objects.
include assignments/a6/CMakeFiles/a6.dir/flags.make

assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLBufferObjects.cpp.o: assignments/a6/CMakeFiles/a6.dir/flags.make
assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLBufferObjects.cpp.o: /Users/songyuanliu/desktop/FinalProject/src/OpenGLBufferObjects.cpp
assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLBufferObjects.cpp.o: assignments/a6/CMakeFiles/a6.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/songyuanliu/desktop/FinalProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLBufferObjects.cpp.o"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLBufferObjects.cpp.o -MF CMakeFiles/a6.dir/__/__/src/OpenGLBufferObjects.cpp.o.d -o CMakeFiles/a6.dir/__/__/src/OpenGLBufferObjects.cpp.o -c /Users/songyuanliu/desktop/FinalProject/src/OpenGLBufferObjects.cpp

assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLBufferObjects.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/a6.dir/__/__/src/OpenGLBufferObjects.cpp.i"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/songyuanliu/desktop/FinalProject/src/OpenGLBufferObjects.cpp > CMakeFiles/a6.dir/__/__/src/OpenGLBufferObjects.cpp.i

assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLBufferObjects.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/a6.dir/__/__/src/OpenGLBufferObjects.cpp.s"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/songyuanliu/desktop/FinalProject/src/OpenGLBufferObjects.cpp -o CMakeFiles/a6.dir/__/__/src/OpenGLBufferObjects.cpp.s

assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLMarkerObjects.cpp.o: assignments/a6/CMakeFiles/a6.dir/flags.make
assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLMarkerObjects.cpp.o: /Users/songyuanliu/desktop/FinalProject/src/OpenGLMarkerObjects.cpp
assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLMarkerObjects.cpp.o: assignments/a6/CMakeFiles/a6.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/songyuanliu/desktop/FinalProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLMarkerObjects.cpp.o"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLMarkerObjects.cpp.o -MF CMakeFiles/a6.dir/__/__/src/OpenGLMarkerObjects.cpp.o.d -o CMakeFiles/a6.dir/__/__/src/OpenGLMarkerObjects.cpp.o -c /Users/songyuanliu/desktop/FinalProject/src/OpenGLMarkerObjects.cpp

assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLMarkerObjects.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/a6.dir/__/__/src/OpenGLMarkerObjects.cpp.i"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/songyuanliu/desktop/FinalProject/src/OpenGLMarkerObjects.cpp > CMakeFiles/a6.dir/__/__/src/OpenGLMarkerObjects.cpp.i

assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLMarkerObjects.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/a6.dir/__/__/src/OpenGLMarkerObjects.cpp.s"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/songyuanliu/desktop/FinalProject/src/OpenGLMarkerObjects.cpp -o CMakeFiles/a6.dir/__/__/src/OpenGLMarkerObjects.cpp.s

assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLObject.cpp.o: assignments/a6/CMakeFiles/a6.dir/flags.make
assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLObject.cpp.o: /Users/songyuanliu/desktop/FinalProject/src/OpenGLObject.cpp
assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLObject.cpp.o: assignments/a6/CMakeFiles/a6.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/songyuanliu/desktop/FinalProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLObject.cpp.o"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLObject.cpp.o -MF CMakeFiles/a6.dir/__/__/src/OpenGLObject.cpp.o.d -o CMakeFiles/a6.dir/__/__/src/OpenGLObject.cpp.o -c /Users/songyuanliu/desktop/FinalProject/src/OpenGLObject.cpp

assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLObject.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/a6.dir/__/__/src/OpenGLObject.cpp.i"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/songyuanliu/desktop/FinalProject/src/OpenGLObject.cpp > CMakeFiles/a6.dir/__/__/src/OpenGLObject.cpp.i

assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLObject.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/a6.dir/__/__/src/OpenGLObject.cpp.s"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/songyuanliu/desktop/FinalProject/src/OpenGLObject.cpp -o CMakeFiles/a6.dir/__/__/src/OpenGLObject.cpp.s

assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLShaderProgram.cpp.o: assignments/a6/CMakeFiles/a6.dir/flags.make
assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLShaderProgram.cpp.o: /Users/songyuanliu/desktop/FinalProject/src/OpenGLShaderProgram.cpp
assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLShaderProgram.cpp.o: assignments/a6/CMakeFiles/a6.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/songyuanliu/desktop/FinalProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLShaderProgram.cpp.o"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLShaderProgram.cpp.o -MF CMakeFiles/a6.dir/__/__/src/OpenGLShaderProgram.cpp.o.d -o CMakeFiles/a6.dir/__/__/src/OpenGLShaderProgram.cpp.o -c /Users/songyuanliu/desktop/FinalProject/src/OpenGLShaderProgram.cpp

assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLShaderProgram.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/a6.dir/__/__/src/OpenGLShaderProgram.cpp.i"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/songyuanliu/desktop/FinalProject/src/OpenGLShaderProgram.cpp > CMakeFiles/a6.dir/__/__/src/OpenGLShaderProgram.cpp.i

assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLShaderProgram.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/a6.dir/__/__/src/OpenGLShaderProgram.cpp.s"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/songyuanliu/desktop/FinalProject/src/OpenGLShaderProgram.cpp -o CMakeFiles/a6.dir/__/__/src/OpenGLShaderProgram.cpp.s

assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLTexture.cpp.o: assignments/a6/CMakeFiles/a6.dir/flags.make
assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLTexture.cpp.o: /Users/songyuanliu/desktop/FinalProject/src/OpenGLTexture.cpp
assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLTexture.cpp.o: assignments/a6/CMakeFiles/a6.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/songyuanliu/desktop/FinalProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLTexture.cpp.o"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLTexture.cpp.o -MF CMakeFiles/a6.dir/__/__/src/OpenGLTexture.cpp.o.d -o CMakeFiles/a6.dir/__/__/src/OpenGLTexture.cpp.o -c /Users/songyuanliu/desktop/FinalProject/src/OpenGLTexture.cpp

assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLTexture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/a6.dir/__/__/src/OpenGLTexture.cpp.i"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/songyuanliu/desktop/FinalProject/src/OpenGLTexture.cpp > CMakeFiles/a6.dir/__/__/src/OpenGLTexture.cpp.i

assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLTexture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/a6.dir/__/__/src/OpenGLTexture.cpp.s"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/songyuanliu/desktop/FinalProject/src/OpenGLTexture.cpp -o CMakeFiles/a6.dir/__/__/src/OpenGLTexture.cpp.s

assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLViewer.cpp.o: assignments/a6/CMakeFiles/a6.dir/flags.make
assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLViewer.cpp.o: /Users/songyuanliu/desktop/FinalProject/src/OpenGLViewer.cpp
assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLViewer.cpp.o: assignments/a6/CMakeFiles/a6.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/songyuanliu/desktop/FinalProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLViewer.cpp.o"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLViewer.cpp.o -MF CMakeFiles/a6.dir/__/__/src/OpenGLViewer.cpp.o.d -o CMakeFiles/a6.dir/__/__/src/OpenGLViewer.cpp.o -c /Users/songyuanliu/desktop/FinalProject/src/OpenGLViewer.cpp

assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLViewer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/a6.dir/__/__/src/OpenGLViewer.cpp.i"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/songyuanliu/desktop/FinalProject/src/OpenGLViewer.cpp > CMakeFiles/a6.dir/__/__/src/OpenGLViewer.cpp.i

assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLViewer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/a6.dir/__/__/src/OpenGLViewer.cpp.s"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/songyuanliu/desktop/FinalProject/src/OpenGLViewer.cpp -o CMakeFiles/a6.dir/__/__/src/OpenGLViewer.cpp.s

assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLWindow.cpp.o: assignments/a6/CMakeFiles/a6.dir/flags.make
assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLWindow.cpp.o: /Users/songyuanliu/desktop/FinalProject/src/OpenGLWindow.cpp
assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLWindow.cpp.o: assignments/a6/CMakeFiles/a6.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/songyuanliu/desktop/FinalProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLWindow.cpp.o"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLWindow.cpp.o -MF CMakeFiles/a6.dir/__/__/src/OpenGLWindow.cpp.o.d -o CMakeFiles/a6.dir/__/__/src/OpenGLWindow.cpp.o -c /Users/songyuanliu/desktop/FinalProject/src/OpenGLWindow.cpp

assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLWindow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/a6.dir/__/__/src/OpenGLWindow.cpp.i"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/songyuanliu/desktop/FinalProject/src/OpenGLWindow.cpp > CMakeFiles/a6.dir/__/__/src/OpenGLWindow.cpp.i

assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLWindow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/a6.dir/__/__/src/OpenGLWindow.cpp.s"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/songyuanliu/desktop/FinalProject/src/OpenGLWindow.cpp -o CMakeFiles/a6.dir/__/__/src/OpenGLWindow.cpp.s

assignments/a6/CMakeFiles/a6.dir/__/__/src/glad.cpp.o: assignments/a6/CMakeFiles/a6.dir/flags.make
assignments/a6/CMakeFiles/a6.dir/__/__/src/glad.cpp.o: /Users/songyuanliu/desktop/FinalProject/src/glad.cpp
assignments/a6/CMakeFiles/a6.dir/__/__/src/glad.cpp.o: assignments/a6/CMakeFiles/a6.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/songyuanliu/desktop/FinalProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object assignments/a6/CMakeFiles/a6.dir/__/__/src/glad.cpp.o"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT assignments/a6/CMakeFiles/a6.dir/__/__/src/glad.cpp.o -MF CMakeFiles/a6.dir/__/__/src/glad.cpp.o.d -o CMakeFiles/a6.dir/__/__/src/glad.cpp.o -c /Users/songyuanliu/desktop/FinalProject/src/glad.cpp

assignments/a6/CMakeFiles/a6.dir/__/__/src/glad.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/a6.dir/__/__/src/glad.cpp.i"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/songyuanliu/desktop/FinalProject/src/glad.cpp > CMakeFiles/a6.dir/__/__/src/glad.cpp.i

assignments/a6/CMakeFiles/a6.dir/__/__/src/glad.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/a6.dir/__/__/src/glad.cpp.s"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/songyuanliu/desktop/FinalProject/src/glad.cpp -o CMakeFiles/a6.dir/__/__/src/glad.cpp.s

assignments/a6/CMakeFiles/a6.dir/__/__/src/mikktspace.cpp.o: assignments/a6/CMakeFiles/a6.dir/flags.make
assignments/a6/CMakeFiles/a6.dir/__/__/src/mikktspace.cpp.o: /Users/songyuanliu/desktop/FinalProject/src/mikktspace.cpp
assignments/a6/CMakeFiles/a6.dir/__/__/src/mikktspace.cpp.o: assignments/a6/CMakeFiles/a6.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/songyuanliu/desktop/FinalProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object assignments/a6/CMakeFiles/a6.dir/__/__/src/mikktspace.cpp.o"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT assignments/a6/CMakeFiles/a6.dir/__/__/src/mikktspace.cpp.o -MF CMakeFiles/a6.dir/__/__/src/mikktspace.cpp.o.d -o CMakeFiles/a6.dir/__/__/src/mikktspace.cpp.o -c /Users/songyuanliu/desktop/FinalProject/src/mikktspace.cpp

assignments/a6/CMakeFiles/a6.dir/__/__/src/mikktspace.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/a6.dir/__/__/src/mikktspace.cpp.i"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/songyuanliu/desktop/FinalProject/src/mikktspace.cpp > CMakeFiles/a6.dir/__/__/src/mikktspace.cpp.i

assignments/a6/CMakeFiles/a6.dir/__/__/src/mikktspace.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/a6.dir/__/__/src/mikktspace.cpp.s"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/songyuanliu/desktop/FinalProject/src/mikktspace.cpp -o CMakeFiles/a6.dir/__/__/src/mikktspace.cpp.s

assignments/a6/CMakeFiles/a6.dir/main.cpp.o: assignments/a6/CMakeFiles/a6.dir/flags.make
assignments/a6/CMakeFiles/a6.dir/main.cpp.o: /Users/songyuanliu/desktop/FinalProject/assignments/a6/main.cpp
assignments/a6/CMakeFiles/a6.dir/main.cpp.o: assignments/a6/CMakeFiles/a6.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/songyuanliu/desktop/FinalProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object assignments/a6/CMakeFiles/a6.dir/main.cpp.o"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT assignments/a6/CMakeFiles/a6.dir/main.cpp.o -MF CMakeFiles/a6.dir/main.cpp.o.d -o CMakeFiles/a6.dir/main.cpp.o -c /Users/songyuanliu/desktop/FinalProject/assignments/a6/main.cpp

assignments/a6/CMakeFiles/a6.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/a6.dir/main.cpp.i"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/songyuanliu/desktop/FinalProject/assignments/a6/main.cpp > CMakeFiles/a6.dir/main.cpp.i

assignments/a6/CMakeFiles/a6.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/a6.dir/main.cpp.s"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/songyuanliu/desktop/FinalProject/assignments/a6/main.cpp -o CMakeFiles/a6.dir/main.cpp.s

assignments/a6/CMakeFiles/a6.dir/__/__/ext/tiny_obj_loader/TinyObjLoader.cpp.o: assignments/a6/CMakeFiles/a6.dir/flags.make
assignments/a6/CMakeFiles/a6.dir/__/__/ext/tiny_obj_loader/TinyObjLoader.cpp.o: /Users/songyuanliu/desktop/FinalProject/ext/tiny_obj_loader/TinyObjLoader.cpp
assignments/a6/CMakeFiles/a6.dir/__/__/ext/tiny_obj_loader/TinyObjLoader.cpp.o: assignments/a6/CMakeFiles/a6.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/songyuanliu/desktop/FinalProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object assignments/a6/CMakeFiles/a6.dir/__/__/ext/tiny_obj_loader/TinyObjLoader.cpp.o"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT assignments/a6/CMakeFiles/a6.dir/__/__/ext/tiny_obj_loader/TinyObjLoader.cpp.o -MF CMakeFiles/a6.dir/__/__/ext/tiny_obj_loader/TinyObjLoader.cpp.o.d -o CMakeFiles/a6.dir/__/__/ext/tiny_obj_loader/TinyObjLoader.cpp.o -c /Users/songyuanliu/desktop/FinalProject/ext/tiny_obj_loader/TinyObjLoader.cpp

assignments/a6/CMakeFiles/a6.dir/__/__/ext/tiny_obj_loader/TinyObjLoader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/a6.dir/__/__/ext/tiny_obj_loader/TinyObjLoader.cpp.i"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/songyuanliu/desktop/FinalProject/ext/tiny_obj_loader/TinyObjLoader.cpp > CMakeFiles/a6.dir/__/__/ext/tiny_obj_loader/TinyObjLoader.cpp.i

assignments/a6/CMakeFiles/a6.dir/__/__/ext/tiny_obj_loader/TinyObjLoader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/a6.dir/__/__/ext/tiny_obj_loader/TinyObjLoader.cpp.s"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/songyuanliu/desktop/FinalProject/ext/tiny_obj_loader/TinyObjLoader.cpp -o CMakeFiles/a6.dir/__/__/ext/tiny_obj_loader/TinyObjLoader.cpp.s

assignments/a6/CMakeFiles/a6.dir/__/__/ext/tiny_obj_loader/tiny_obj_loader.cpp.o: assignments/a6/CMakeFiles/a6.dir/flags.make
assignments/a6/CMakeFiles/a6.dir/__/__/ext/tiny_obj_loader/tiny_obj_loader.cpp.o: /Users/songyuanliu/desktop/FinalProject/ext/tiny_obj_loader/tiny_obj_loader.cpp
assignments/a6/CMakeFiles/a6.dir/__/__/ext/tiny_obj_loader/tiny_obj_loader.cpp.o: assignments/a6/CMakeFiles/a6.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/songyuanliu/desktop/FinalProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object assignments/a6/CMakeFiles/a6.dir/__/__/ext/tiny_obj_loader/tiny_obj_loader.cpp.o"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT assignments/a6/CMakeFiles/a6.dir/__/__/ext/tiny_obj_loader/tiny_obj_loader.cpp.o -MF CMakeFiles/a6.dir/__/__/ext/tiny_obj_loader/tiny_obj_loader.cpp.o.d -o CMakeFiles/a6.dir/__/__/ext/tiny_obj_loader/tiny_obj_loader.cpp.o -c /Users/songyuanliu/desktop/FinalProject/ext/tiny_obj_loader/tiny_obj_loader.cpp

assignments/a6/CMakeFiles/a6.dir/__/__/ext/tiny_obj_loader/tiny_obj_loader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/a6.dir/__/__/ext/tiny_obj_loader/tiny_obj_loader.cpp.i"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/songyuanliu/desktop/FinalProject/ext/tiny_obj_loader/tiny_obj_loader.cpp > CMakeFiles/a6.dir/__/__/ext/tiny_obj_loader/tiny_obj_loader.cpp.i

assignments/a6/CMakeFiles/a6.dir/__/__/ext/tiny_obj_loader/tiny_obj_loader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/a6.dir/__/__/ext/tiny_obj_loader/tiny_obj_loader.cpp.s"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/songyuanliu/desktop/FinalProject/ext/tiny_obj_loader/tiny_obj_loader.cpp -o CMakeFiles/a6.dir/__/__/ext/tiny_obj_loader/tiny_obj_loader.cpp.s

assignments/a6/CMakeFiles/a6.dir/__/__/ext/stb/StbImage.cpp.o: assignments/a6/CMakeFiles/a6.dir/flags.make
assignments/a6/CMakeFiles/a6.dir/__/__/ext/stb/StbImage.cpp.o: /Users/songyuanliu/desktop/FinalProject/ext/stb/StbImage.cpp
assignments/a6/CMakeFiles/a6.dir/__/__/ext/stb/StbImage.cpp.o: assignments/a6/CMakeFiles/a6.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/songyuanliu/desktop/FinalProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object assignments/a6/CMakeFiles/a6.dir/__/__/ext/stb/StbImage.cpp.o"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT assignments/a6/CMakeFiles/a6.dir/__/__/ext/stb/StbImage.cpp.o -MF CMakeFiles/a6.dir/__/__/ext/stb/StbImage.cpp.o.d -o CMakeFiles/a6.dir/__/__/ext/stb/StbImage.cpp.o -c /Users/songyuanliu/desktop/FinalProject/ext/stb/StbImage.cpp

assignments/a6/CMakeFiles/a6.dir/__/__/ext/stb/StbImage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/a6.dir/__/__/ext/stb/StbImage.cpp.i"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/songyuanliu/desktop/FinalProject/ext/stb/StbImage.cpp > CMakeFiles/a6.dir/__/__/ext/stb/StbImage.cpp.i

assignments/a6/CMakeFiles/a6.dir/__/__/ext/stb/StbImage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/a6.dir/__/__/ext/stb/StbImage.cpp.s"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/songyuanliu/desktop/FinalProject/ext/stb/StbImage.cpp -o CMakeFiles/a6.dir/__/__/ext/stb/StbImage.cpp.s

assignments/a6/CMakeFiles/a6.dir/__/__/ext/tiny_gltf/TinyGltfLoader.cpp.o: assignments/a6/CMakeFiles/a6.dir/flags.make
assignments/a6/CMakeFiles/a6.dir/__/__/ext/tiny_gltf/TinyGltfLoader.cpp.o: /Users/songyuanliu/desktop/FinalProject/ext/tiny_gltf/TinyGltfLoader.cpp
assignments/a6/CMakeFiles/a6.dir/__/__/ext/tiny_gltf/TinyGltfLoader.cpp.o: assignments/a6/CMakeFiles/a6.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/songyuanliu/desktop/FinalProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object assignments/a6/CMakeFiles/a6.dir/__/__/ext/tiny_gltf/TinyGltfLoader.cpp.o"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT assignments/a6/CMakeFiles/a6.dir/__/__/ext/tiny_gltf/TinyGltfLoader.cpp.o -MF CMakeFiles/a6.dir/__/__/ext/tiny_gltf/TinyGltfLoader.cpp.o.d -o CMakeFiles/a6.dir/__/__/ext/tiny_gltf/TinyGltfLoader.cpp.o -c /Users/songyuanliu/desktop/FinalProject/ext/tiny_gltf/TinyGltfLoader.cpp

assignments/a6/CMakeFiles/a6.dir/__/__/ext/tiny_gltf/TinyGltfLoader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/a6.dir/__/__/ext/tiny_gltf/TinyGltfLoader.cpp.i"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/songyuanliu/desktop/FinalProject/ext/tiny_gltf/TinyGltfLoader.cpp > CMakeFiles/a6.dir/__/__/ext/tiny_gltf/TinyGltfLoader.cpp.i

assignments/a6/CMakeFiles/a6.dir/__/__/ext/tiny_gltf/TinyGltfLoader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/a6.dir/__/__/ext/tiny_gltf/TinyGltfLoader.cpp.s"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/songyuanliu/desktop/FinalProject/ext/tiny_gltf/TinyGltfLoader.cpp -o CMakeFiles/a6.dir/__/__/ext/tiny_gltf/TinyGltfLoader.cpp.s

# Object files for target a6
a6_OBJECTS = \
"CMakeFiles/a6.dir/__/__/src/OpenGLBufferObjects.cpp.o" \
"CMakeFiles/a6.dir/__/__/src/OpenGLMarkerObjects.cpp.o" \
"CMakeFiles/a6.dir/__/__/src/OpenGLObject.cpp.o" \
"CMakeFiles/a6.dir/__/__/src/OpenGLShaderProgram.cpp.o" \
"CMakeFiles/a6.dir/__/__/src/OpenGLTexture.cpp.o" \
"CMakeFiles/a6.dir/__/__/src/OpenGLViewer.cpp.o" \
"CMakeFiles/a6.dir/__/__/src/OpenGLWindow.cpp.o" \
"CMakeFiles/a6.dir/__/__/src/glad.cpp.o" \
"CMakeFiles/a6.dir/__/__/src/mikktspace.cpp.o" \
"CMakeFiles/a6.dir/main.cpp.o" \
"CMakeFiles/a6.dir/__/__/ext/tiny_obj_loader/TinyObjLoader.cpp.o" \
"CMakeFiles/a6.dir/__/__/ext/tiny_obj_loader/tiny_obj_loader.cpp.o" \
"CMakeFiles/a6.dir/__/__/ext/stb/StbImage.cpp.o" \
"CMakeFiles/a6.dir/__/__/ext/tiny_gltf/TinyGltfLoader.cpp.o"

# External object files for target a6
a6_EXTERNAL_OBJECTS =

assignments/a6/a6: assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLBufferObjects.cpp.o
assignments/a6/a6: assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLMarkerObjects.cpp.o
assignments/a6/a6: assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLObject.cpp.o
assignments/a6/a6: assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLShaderProgram.cpp.o
assignments/a6/a6: assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLTexture.cpp.o
assignments/a6/a6: assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLViewer.cpp.o
assignments/a6/a6: assignments/a6/CMakeFiles/a6.dir/__/__/src/OpenGLWindow.cpp.o
assignments/a6/a6: assignments/a6/CMakeFiles/a6.dir/__/__/src/glad.cpp.o
assignments/a6/a6: assignments/a6/CMakeFiles/a6.dir/__/__/src/mikktspace.cpp.o
assignments/a6/a6: assignments/a6/CMakeFiles/a6.dir/main.cpp.o
assignments/a6/a6: assignments/a6/CMakeFiles/a6.dir/__/__/ext/tiny_obj_loader/TinyObjLoader.cpp.o
assignments/a6/a6: assignments/a6/CMakeFiles/a6.dir/__/__/ext/tiny_obj_loader/tiny_obj_loader.cpp.o
assignments/a6/a6: assignments/a6/CMakeFiles/a6.dir/__/__/ext/stb/StbImage.cpp.o
assignments/a6/a6: assignments/a6/CMakeFiles/a6.dir/__/__/ext/tiny_gltf/TinyGltfLoader.cpp.o
assignments/a6/a6: assignments/a6/CMakeFiles/a6.dir/build.make
assignments/a6/a6: assignments/a6/CMakeFiles/a6.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/songyuanliu/desktop/FinalProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Linking CXX executable a6"
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/a6.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
assignments/a6/CMakeFiles/a6.dir/build: assignments/a6/a6
.PHONY : assignments/a6/CMakeFiles/a6.dir/build

assignments/a6/CMakeFiles/a6.dir/clean:
	cd /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 && $(CMAKE_COMMAND) -P CMakeFiles/a6.dir/cmake_clean.cmake
.PHONY : assignments/a6/CMakeFiles/a6.dir/clean

assignments/a6/CMakeFiles/a6.dir/depend:
	cd /Users/songyuanliu/desktop/FinalProject/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/songyuanliu/desktop/FinalProject /Users/songyuanliu/desktop/FinalProject/assignments/a6 /Users/songyuanliu/desktop/FinalProject/build /Users/songyuanliu/desktop/FinalProject/build/assignments/a6 /Users/songyuanliu/desktop/FinalProject/build/assignments/a6/CMakeFiles/a6.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : assignments/a6/CMakeFiles/a6.dir/depend

