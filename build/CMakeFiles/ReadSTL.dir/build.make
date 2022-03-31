# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nightfury/CLionProjects/winnove-medical-interview

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nightfury/CLionProjects/winnove-medical-interview/build

# Include any dependencies generated for this target.
include CMakeFiles/ReadSTL.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ReadSTL.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ReadSTL.dir/flags.make

CMakeFiles/ReadSTL.dir/main.cpp.o: CMakeFiles/ReadSTL.dir/flags.make
CMakeFiles/ReadSTL.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nightfury/CLionProjects/winnove-medical-interview/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ReadSTL.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ReadSTL.dir/main.cpp.o -c /home/nightfury/CLionProjects/winnove-medical-interview/main.cpp

CMakeFiles/ReadSTL.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ReadSTL.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nightfury/CLionProjects/winnove-medical-interview/main.cpp > CMakeFiles/ReadSTL.dir/main.cpp.i

CMakeFiles/ReadSTL.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ReadSTL.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nightfury/CLionProjects/winnove-medical-interview/main.cpp -o CMakeFiles/ReadSTL.dir/main.cpp.s

# Object files for target ReadSTL
ReadSTL_OBJECTS = \
"CMakeFiles/ReadSTL.dir/main.cpp.o"

# External object files for target ReadSTL
ReadSTL_EXTERNAL_OBJECTS =

ReadSTL: CMakeFiles/ReadSTL.dir/main.cpp.o
ReadSTL: CMakeFiles/ReadSTL.dir/build.make
ReadSTL: /home/nightfury/vtk/build/lib/libvtkIOGeometry-9.1.so.9.1.0
ReadSTL: /home/nightfury/vtk/build/lib/libvtkInteractionStyle-9.1.so.9.1.0
ReadSTL: /home/nightfury/vtk/build/lib/libvtkRenderingContextOpenGL2-9.1.so.9.1.0
ReadSTL: /home/nightfury/vtk/build/lib/libvtkRenderingGL2PSOpenGL2-9.1.so.9.1.0
ReadSTL: /home/nightfury/vtk/build/lib/libvtkRenderingOpenGL2-9.1.so.9.1.0
ReadSTL: /home/nightfury/vtk/build/lib/libvtkjsoncpp-9.1.so.9.1.0
ReadSTL: /home/nightfury/vtk/build/lib/libvtkIOLegacy-9.1.so.9.1.0
ReadSTL: /home/nightfury/vtk/build/lib/libvtkIOCore-9.1.so.9.1.0
ReadSTL: /home/nightfury/vtk/build/lib/libvtkRenderingContext2D-9.1.so.9.1.0
ReadSTL: /home/nightfury/vtk/build/lib/libvtkRenderingFreeType-9.1.so.9.1.0
ReadSTL: /home/nightfury/vtk/build/lib/libvtkfreetype-9.1.so.9.1.0
ReadSTL: /home/nightfury/vtk/build/lib/libvtkRenderingUI-9.1.so.9.1.0
ReadSTL: /home/nightfury/vtk/build/lib/libvtkRenderingCore-9.1.so.9.1.0
ReadSTL: /home/nightfury/vtk/build/lib/libvtkCommonColor-9.1.so.9.1.0
ReadSTL: /home/nightfury/vtk/build/lib/libvtkFiltersGeneral-9.1.so.9.1.0
ReadSTL: /home/nightfury/vtk/build/lib/libvtkFiltersCore-9.1.so.9.1.0
ReadSTL: /home/nightfury/vtk/build/lib/libvtkCommonExecutionModel-9.1.so.9.1.0
ReadSTL: /home/nightfury/vtk/build/lib/libvtkCommonDataModel-9.1.so.9.1.0
ReadSTL: /home/nightfury/vtk/build/lib/libvtkCommonTransforms-9.1.so.9.1.0
ReadSTL: /home/nightfury/vtk/build/lib/libvtkCommonMisc-9.1.so.9.1.0
ReadSTL: /home/nightfury/vtk/build/lib/libvtkglew-9.1.so.9.1.0
ReadSTL: /usr/lib/x86_64-linux-gnu/libGLX.so
ReadSTL: /usr/lib/x86_64-linux-gnu/libOpenGL.so
ReadSTL: /usr/lib/x86_64-linux-gnu/libX11.so
ReadSTL: /home/nightfury/vtk/build/lib/libvtkCommonMath-9.1.so.9.1.0
ReadSTL: /home/nightfury/vtk/build/lib/libvtkCommonCore-9.1.so.9.1.0
ReadSTL: /home/nightfury/vtk/build/lib/libvtksys-9.1.so.9.1.0
ReadSTL: /home/nightfury/vtk/build/lib/libvtkkissfft-9.1.so.9.1.0
ReadSTL: /home/nightfury/vtk/build/lib/libvtkzlib-9.1.so.9.1.0
ReadSTL: CMakeFiles/ReadSTL.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nightfury/CLionProjects/winnove-medical-interview/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ReadSTL"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ReadSTL.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ReadSTL.dir/build: ReadSTL

.PHONY : CMakeFiles/ReadSTL.dir/build

CMakeFiles/ReadSTL.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ReadSTL.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ReadSTL.dir/clean

CMakeFiles/ReadSTL.dir/depend:
	cd /home/nightfury/CLionProjects/winnove-medical-interview/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nightfury/CLionProjects/winnove-medical-interview /home/nightfury/CLionProjects/winnove-medical-interview /home/nightfury/CLionProjects/winnove-medical-interview/build /home/nightfury/CLionProjects/winnove-medical-interview/build /home/nightfury/CLionProjects/winnove-medical-interview/build/CMakeFiles/ReadSTL.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ReadSTL.dir/depend

