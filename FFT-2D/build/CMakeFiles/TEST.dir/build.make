# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/hedef-ubuntu/cpp/FFT-2D

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hedef-ubuntu/cpp/FFT-2D/build

# Include any dependencies generated for this target.
include CMakeFiles/TEST.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/TEST.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TEST.dir/flags.make

CMakeFiles/TEST.dir/main.c.o: CMakeFiles/TEST.dir/flags.make
CMakeFiles/TEST.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hedef-ubuntu/cpp/FFT-2D/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/TEST.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/TEST.dir/main.c.o   -c /home/hedef-ubuntu/cpp/FFT-2D/main.c

CMakeFiles/TEST.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/TEST.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hedef-ubuntu/cpp/FFT-2D/main.c > CMakeFiles/TEST.dir/main.c.i

CMakeFiles/TEST.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/TEST.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hedef-ubuntu/cpp/FFT-2D/main.c -o CMakeFiles/TEST.dir/main.c.s

CMakeFiles/TEST.dir/main.c.o.requires:

.PHONY : CMakeFiles/TEST.dir/main.c.o.requires

CMakeFiles/TEST.dir/main.c.o.provides: CMakeFiles/TEST.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/TEST.dir/build.make CMakeFiles/TEST.dir/main.c.o.provides.build
.PHONY : CMakeFiles/TEST.dir/main.c.o.provides

CMakeFiles/TEST.dir/main.c.o.provides.build: CMakeFiles/TEST.dir/main.c.o


CMakeFiles/TEST.dir/fft-2d.c.o: CMakeFiles/TEST.dir/flags.make
CMakeFiles/TEST.dir/fft-2d.c.o: ../fft-2d.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hedef-ubuntu/cpp/FFT-2D/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/TEST.dir/fft-2d.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/TEST.dir/fft-2d.c.o   -c /home/hedef-ubuntu/cpp/FFT-2D/fft-2d.c

CMakeFiles/TEST.dir/fft-2d.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/TEST.dir/fft-2d.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hedef-ubuntu/cpp/FFT-2D/fft-2d.c > CMakeFiles/TEST.dir/fft-2d.c.i

CMakeFiles/TEST.dir/fft-2d.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/TEST.dir/fft-2d.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hedef-ubuntu/cpp/FFT-2D/fft-2d.c -o CMakeFiles/TEST.dir/fft-2d.c.s

CMakeFiles/TEST.dir/fft-2d.c.o.requires:

.PHONY : CMakeFiles/TEST.dir/fft-2d.c.o.requires

CMakeFiles/TEST.dir/fft-2d.c.o.provides: CMakeFiles/TEST.dir/fft-2d.c.o.requires
	$(MAKE) -f CMakeFiles/TEST.dir/build.make CMakeFiles/TEST.dir/fft-2d.c.o.provides.build
.PHONY : CMakeFiles/TEST.dir/fft-2d.c.o.provides

CMakeFiles/TEST.dir/fft-2d.c.o.provides.build: CMakeFiles/TEST.dir/fft-2d.c.o


# Object files for target TEST
TEST_OBJECTS = \
"CMakeFiles/TEST.dir/main.c.o" \
"CMakeFiles/TEST.dir/fft-2d.c.o"

# External object files for target TEST
TEST_EXTERNAL_OBJECTS =

TEST: CMakeFiles/TEST.dir/main.c.o
TEST: CMakeFiles/TEST.dir/fft-2d.c.o
TEST: CMakeFiles/TEST.dir/build.make
TEST: CMakeFiles/TEST.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hedef-ubuntu/cpp/FFT-2D/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable TEST"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TEST.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TEST.dir/build: TEST

.PHONY : CMakeFiles/TEST.dir/build

CMakeFiles/TEST.dir/requires: CMakeFiles/TEST.dir/main.c.o.requires
CMakeFiles/TEST.dir/requires: CMakeFiles/TEST.dir/fft-2d.c.o.requires

.PHONY : CMakeFiles/TEST.dir/requires

CMakeFiles/TEST.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/TEST.dir/cmake_clean.cmake
.PHONY : CMakeFiles/TEST.dir/clean

CMakeFiles/TEST.dir/depend:
	cd /home/hedef-ubuntu/cpp/FFT-2D/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hedef-ubuntu/cpp/FFT-2D /home/hedef-ubuntu/cpp/FFT-2D /home/hedef-ubuntu/cpp/FFT-2D/build /home/hedef-ubuntu/cpp/FFT-2D/build /home/hedef-ubuntu/cpp/FFT-2D/build/CMakeFiles/TEST.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/TEST.dir/depend

