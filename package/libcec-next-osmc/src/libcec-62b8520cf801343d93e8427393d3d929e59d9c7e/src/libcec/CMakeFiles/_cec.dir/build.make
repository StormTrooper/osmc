# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

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
CMAKE_SOURCE_DIR = /mnt/package/libcec-next-osmc/src/libcec-62b8520cf801343d93e8427393d3d929e59d9c7e

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/package/libcec-next-osmc/src/libcec-62b8520cf801343d93e8427393d3d929e59d9c7e

# Include any dependencies generated for this target.
include src/libcec/CMakeFiles/_cec.dir/depend.make

# Include the progress variables for this target.
include src/libcec/CMakeFiles/_cec.dir/progress.make

# Include the compile flags for this target's objects.
include src/libcec/CMakeFiles/_cec.dir/flags.make

src/libcec/libcecPYTHON_wrap.cxx: src/libcec/libcec.i
	$(CMAKE_COMMAND) -E cmake_progress_report /mnt/package/libcec-next-osmc/src/libcec-62b8520cf801343d93e8427393d3d929e59d9c7e/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Swig source"
	cd /mnt/package/libcec-next-osmc/src/libcec-62b8520cf801343d93e8427393d3d929e59d9c7e/src/libcec && /usr/bin/cmake -E make_directory /mnt/package/libcec-next-osmc/src/libcec-62b8520cf801343d93e8427393d3d929e59d9c7e/src/libcec
	cd /mnt/package/libcec-next-osmc/src/libcec-62b8520cf801343d93e8427393d3d929e59d9c7e/src/libcec && /usr/bin/swig2.0 -python -outdir /mnt/package/libcec-next-osmc/src/libcec-62b8520cf801343d93e8427393d3d929e59d9c7e/src/libcec -c++ -I/usr/osmc/include/p8-platform -I/usr/osmc/include -I/mnt/package/libcec-next-osmc/src/libcec-62b8520cf801343d93e8427393d3d929e59d9c7e/src/libcec -I/mnt/package/libcec-next-osmc/src/libcec-62b8520cf801343d93e8427393d3d929e59d9c7e/src/libcec/../../include -I/usr/include/python2.7 -o /mnt/package/libcec-next-osmc/src/libcec-62b8520cf801343d93e8427393d3d929e59d9c7e/src/libcec/libcecPYTHON_wrap.cxx /mnt/package/libcec-next-osmc/src/libcec-62b8520cf801343d93e8427393d3d929e59d9c7e/src/libcec/libcec.i

src/libcec/libcec.py: src/libcec/libcecPYTHON_wrap.cxx

src/libcec/CMakeFiles/_cec.dir/libcecPYTHON_wrap.cxx.o: src/libcec/CMakeFiles/_cec.dir/flags.make
src/libcec/CMakeFiles/_cec.dir/libcecPYTHON_wrap.cxx.o: src/libcec/libcecPYTHON_wrap.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /mnt/package/libcec-next-osmc/src/libcec-62b8520cf801343d93e8427393d3d929e59d9c7e/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/libcec/CMakeFiles/_cec.dir/libcecPYTHON_wrap.cxx.o"
	cd /mnt/package/libcec-next-osmc/src/libcec-62b8520cf801343d93e8427393d3d929e59d9c7e/src/libcec && /usr/lib/ccache/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/_cec.dir/libcecPYTHON_wrap.cxx.o -c /mnt/package/libcec-next-osmc/src/libcec-62b8520cf801343d93e8427393d3d929e59d9c7e/src/libcec/libcecPYTHON_wrap.cxx

src/libcec/CMakeFiles/_cec.dir/libcecPYTHON_wrap.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/_cec.dir/libcecPYTHON_wrap.cxx.i"
	cd /mnt/package/libcec-next-osmc/src/libcec-62b8520cf801343d93e8427393d3d929e59d9c7e/src/libcec && /usr/lib/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /mnt/package/libcec-next-osmc/src/libcec-62b8520cf801343d93e8427393d3d929e59d9c7e/src/libcec/libcecPYTHON_wrap.cxx > CMakeFiles/_cec.dir/libcecPYTHON_wrap.cxx.i

src/libcec/CMakeFiles/_cec.dir/libcecPYTHON_wrap.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/_cec.dir/libcecPYTHON_wrap.cxx.s"
	cd /mnt/package/libcec-next-osmc/src/libcec-62b8520cf801343d93e8427393d3d929e59d9c7e/src/libcec && /usr/lib/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /mnt/package/libcec-next-osmc/src/libcec-62b8520cf801343d93e8427393d3d929e59d9c7e/src/libcec/libcecPYTHON_wrap.cxx -o CMakeFiles/_cec.dir/libcecPYTHON_wrap.cxx.s

src/libcec/CMakeFiles/_cec.dir/libcecPYTHON_wrap.cxx.o.requires:
.PHONY : src/libcec/CMakeFiles/_cec.dir/libcecPYTHON_wrap.cxx.o.requires

src/libcec/CMakeFiles/_cec.dir/libcecPYTHON_wrap.cxx.o.provides: src/libcec/CMakeFiles/_cec.dir/libcecPYTHON_wrap.cxx.o.requires
	$(MAKE) -f src/libcec/CMakeFiles/_cec.dir/build.make src/libcec/CMakeFiles/_cec.dir/libcecPYTHON_wrap.cxx.o.provides.build
.PHONY : src/libcec/CMakeFiles/_cec.dir/libcecPYTHON_wrap.cxx.o.provides

src/libcec/CMakeFiles/_cec.dir/libcecPYTHON_wrap.cxx.o.provides.build: src/libcec/CMakeFiles/_cec.dir/libcecPYTHON_wrap.cxx.o

# Object files for target _cec
_cec_OBJECTS = \
"CMakeFiles/_cec.dir/libcecPYTHON_wrap.cxx.o"

# External object files for target _cec
_cec_EXTERNAL_OBJECTS =

src/libcec/_cec.so: src/libcec/CMakeFiles/_cec.dir/libcecPYTHON_wrap.cxx.o
src/libcec/_cec.so: src/libcec/CMakeFiles/_cec.dir/build.make
src/libcec/_cec.so: /usr/lib/arm-linux-gnueabihf/libpython2.7.so
src/libcec/_cec.so: src/libcec/libcec.so.3.1.0
src/libcec/_cec.so: src/libcec/CMakeFiles/_cec.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared module _cec.so"
	cd /mnt/package/libcec-next-osmc/src/libcec-62b8520cf801343d93e8427393d3d929e59d9c7e/src/libcec && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/_cec.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/libcec/CMakeFiles/_cec.dir/build: src/libcec/_cec.so
.PHONY : src/libcec/CMakeFiles/_cec.dir/build

src/libcec/CMakeFiles/_cec.dir/requires: src/libcec/CMakeFiles/_cec.dir/libcecPYTHON_wrap.cxx.o.requires
.PHONY : src/libcec/CMakeFiles/_cec.dir/requires

src/libcec/CMakeFiles/_cec.dir/clean:
	cd /mnt/package/libcec-next-osmc/src/libcec-62b8520cf801343d93e8427393d3d929e59d9c7e/src/libcec && $(CMAKE_COMMAND) -P CMakeFiles/_cec.dir/cmake_clean.cmake
.PHONY : src/libcec/CMakeFiles/_cec.dir/clean

src/libcec/CMakeFiles/_cec.dir/depend: src/libcec/libcecPYTHON_wrap.cxx
src/libcec/CMakeFiles/_cec.dir/depend: src/libcec/libcec.py
	cd /mnt/package/libcec-next-osmc/src/libcec-62b8520cf801343d93e8427393d3d929e59d9c7e && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/package/libcec-next-osmc/src/libcec-62b8520cf801343d93e8427393d3d929e59d9c7e /mnt/package/libcec-next-osmc/src/libcec-62b8520cf801343d93e8427393d3d929e59d9c7e/src/libcec /mnt/package/libcec-next-osmc/src/libcec-62b8520cf801343d93e8427393d3d929e59d9c7e /mnt/package/libcec-next-osmc/src/libcec-62b8520cf801343d93e8427393d3d929e59d9c7e/src/libcec /mnt/package/libcec-next-osmc/src/libcec-62b8520cf801343d93e8427393d3d929e59d9c7e/src/libcec/CMakeFiles/_cec.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/libcec/CMakeFiles/_cec.dir/depend

