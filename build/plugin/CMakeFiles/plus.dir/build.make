# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yan/ros_tutorial/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yan/ros_tutorial/build

# Include any dependencies generated for this target.
include plugin/CMakeFiles/plus.dir/depend.make

# Include the progress variables for this target.
include plugin/CMakeFiles/plus.dir/progress.make

# Include the compile flags for this target's objects.
include plugin/CMakeFiles/plus.dir/flags.make

plugin/CMakeFiles/plus.dir/src/plus.cpp.o: plugin/CMakeFiles/plus.dir/flags.make
plugin/CMakeFiles/plus.dir/src/plus.cpp.o: /home/yan/ros_tutorial/src/plugin/src/plus.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yan/ros_tutorial/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object plugin/CMakeFiles/plus.dir/src/plus.cpp.o"
	cd /home/yan/ros_tutorial/build/plugin && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/plus.dir/src/plus.cpp.o -c /home/yan/ros_tutorial/src/plugin/src/plus.cpp

plugin/CMakeFiles/plus.dir/src/plus.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/plus.dir/src/plus.cpp.i"
	cd /home/yan/ros_tutorial/build/plugin && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yan/ros_tutorial/src/plugin/src/plus.cpp > CMakeFiles/plus.dir/src/plus.cpp.i

plugin/CMakeFiles/plus.dir/src/plus.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/plus.dir/src/plus.cpp.s"
	cd /home/yan/ros_tutorial/build/plugin && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yan/ros_tutorial/src/plugin/src/plus.cpp -o CMakeFiles/plus.dir/src/plus.cpp.s

plugin/CMakeFiles/plus.dir/src/plus.cpp.o.requires:

.PHONY : plugin/CMakeFiles/plus.dir/src/plus.cpp.o.requires

plugin/CMakeFiles/plus.dir/src/plus.cpp.o.provides: plugin/CMakeFiles/plus.dir/src/plus.cpp.o.requires
	$(MAKE) -f plugin/CMakeFiles/plus.dir/build.make plugin/CMakeFiles/plus.dir/src/plus.cpp.o.provides.build
.PHONY : plugin/CMakeFiles/plus.dir/src/plus.cpp.o.provides

plugin/CMakeFiles/plus.dir/src/plus.cpp.o.provides.build: plugin/CMakeFiles/plus.dir/src/plus.cpp.o


# Object files for target plus
plus_OBJECTS = \
"CMakeFiles/plus.dir/src/plus.cpp.o"

# External object files for target plus
plus_EXTERNAL_OBJECTS =

/home/yan/ros_tutorial/devel/lib/libplus.so: plugin/CMakeFiles/plus.dir/src/plus.cpp.o
/home/yan/ros_tutorial/devel/lib/libplus.so: plugin/CMakeFiles/plus.dir/build.make
/home/yan/ros_tutorial/devel/lib/libplus.so: plugin/CMakeFiles/plus.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yan/ros_tutorial/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library /home/yan/ros_tutorial/devel/lib/libplus.so"
	cd /home/yan/ros_tutorial/build/plugin && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/plus.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
plugin/CMakeFiles/plus.dir/build: /home/yan/ros_tutorial/devel/lib/libplus.so

.PHONY : plugin/CMakeFiles/plus.dir/build

plugin/CMakeFiles/plus.dir/requires: plugin/CMakeFiles/plus.dir/src/plus.cpp.o.requires

.PHONY : plugin/CMakeFiles/plus.dir/requires

plugin/CMakeFiles/plus.dir/clean:
	cd /home/yan/ros_tutorial/build/plugin && $(CMAKE_COMMAND) -P CMakeFiles/plus.dir/cmake_clean.cmake
.PHONY : plugin/CMakeFiles/plus.dir/clean

plugin/CMakeFiles/plus.dir/depend:
	cd /home/yan/ros_tutorial/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yan/ros_tutorial/src /home/yan/ros_tutorial/src/plugin /home/yan/ros_tutorial/build /home/yan/ros_tutorial/build/plugin /home/yan/ros_tutorial/build/plugin/CMakeFiles/plus.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : plugin/CMakeFiles/plus.dir/depend

