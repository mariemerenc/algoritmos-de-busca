# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/mariemerenc/Downloads/code

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mariemerenc/Downloads/code/build

# Include any dependencies generated for this target.
include CMakeFiles/timing.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/timing.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/timing.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/timing.dir/flags.make

CMakeFiles/timing.dir/src/timing_template.cpp.o: CMakeFiles/timing.dir/flags.make
CMakeFiles/timing.dir/src/timing_template.cpp.o: ../src/timing_template.cpp
CMakeFiles/timing.dir/src/timing_template.cpp.o: CMakeFiles/timing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mariemerenc/Downloads/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/timing.dir/src/timing_template.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/timing.dir/src/timing_template.cpp.o -MF CMakeFiles/timing.dir/src/timing_template.cpp.o.d -o CMakeFiles/timing.dir/src/timing_template.cpp.o -c /home/mariemerenc/Downloads/code/src/timing_template.cpp

CMakeFiles/timing.dir/src/timing_template.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/timing.dir/src/timing_template.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mariemerenc/Downloads/code/src/timing_template.cpp > CMakeFiles/timing.dir/src/timing_template.cpp.i

CMakeFiles/timing.dir/src/timing_template.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/timing.dir/src/timing_template.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mariemerenc/Downloads/code/src/timing_template.cpp -o CMakeFiles/timing.dir/src/timing_template.cpp.s

# Object files for target timing
timing_OBJECTS = \
"CMakeFiles/timing.dir/src/timing_template.cpp.o"

# External object files for target timing
timing_EXTERNAL_OBJECTS =

timing: CMakeFiles/timing.dir/src/timing_template.cpp.o
timing: CMakeFiles/timing.dir/build.make
timing: libsa.a
timing: CMakeFiles/timing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mariemerenc/Downloads/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable timing"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/timing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/timing.dir/build: timing
.PHONY : CMakeFiles/timing.dir/build

CMakeFiles/timing.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/timing.dir/cmake_clean.cmake
.PHONY : CMakeFiles/timing.dir/clean

CMakeFiles/timing.dir/depend:
	cd /home/mariemerenc/Downloads/code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mariemerenc/Downloads/code /home/mariemerenc/Downloads/code /home/mariemerenc/Downloads/code/build /home/mariemerenc/Downloads/code/build /home/mariemerenc/Downloads/code/build/CMakeFiles/timing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/timing.dir/depend

