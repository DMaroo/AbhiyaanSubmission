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
CMAKE_SOURCE_DIR = /home/dhruv/Coding/ROS/Abhiyaan/nodes/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dhruv/Coding/ROS/Abhiyaan/nodes/build

# Utility rule file for GMock.

# Include the progress variables for this target.
include CMakeFiles/GMock.dir/progress.make

CMakeFiles/GMock: CMakeFiles/GMock-complete


CMakeFiles/GMock-complete: GMock-prefix/src/GMock-stamp/GMock-install
CMakeFiles/GMock-complete: GMock-prefix/src/GMock-stamp/GMock-mkdir
CMakeFiles/GMock-complete: GMock-prefix/src/GMock-stamp/GMock-download
CMakeFiles/GMock-complete: GMock-prefix/src/GMock-stamp/GMock-update
CMakeFiles/GMock-complete: GMock-prefix/src/GMock-stamp/GMock-patch
CMakeFiles/GMock-complete: GMock-prefix/src/GMock-stamp/GMock-configure
CMakeFiles/GMock-complete: GMock-prefix/src/GMock-stamp/GMock-build
CMakeFiles/GMock-complete: GMock-prefix/src/GMock-stamp/GMock-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/dhruv/Coding/ROS/Abhiyaan/nodes/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'GMock'"
	/usr/bin/cmake -E make_directory /home/dhruv/Coding/ROS/Abhiyaan/nodes/build/CMakeFiles
	/usr/bin/cmake -E touch /home/dhruv/Coding/ROS/Abhiyaan/nodes/build/CMakeFiles/GMock-complete
	/usr/bin/cmake -E touch /home/dhruv/Coding/ROS/Abhiyaan/nodes/build/GMock-prefix/src/GMock-stamp/GMock-done

GMock-prefix/src/GMock-stamp/GMock-install: GMock-prefix/src/GMock-stamp/GMock-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/dhruv/Coding/ROS/Abhiyaan/nodes/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No install step for 'GMock'"
	cd /home/dhruv/Coding/ROS/Abhiyaan/nodes/build/gmock && /usr/bin/cmake -E echo_append
	cd /home/dhruv/Coding/ROS/Abhiyaan/nodes/build/gmock && /usr/bin/cmake -E touch /home/dhruv/Coding/ROS/Abhiyaan/nodes/build/GMock-prefix/src/GMock-stamp/GMock-install

GMock-prefix/src/GMock-stamp/GMock-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/dhruv/Coding/ROS/Abhiyaan/nodes/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'GMock'"
	/usr/bin/cmake -E make_directory /usr/src/googletest/googlemock
	/usr/bin/cmake -E make_directory /home/dhruv/Coding/ROS/Abhiyaan/nodes/build/gmock
	/usr/bin/cmake -E make_directory /home/dhruv/Coding/ROS/Abhiyaan/nodes/build/GMock-prefix
	/usr/bin/cmake -E make_directory /home/dhruv/Coding/ROS/Abhiyaan/nodes/build/GMock-prefix/tmp
	/usr/bin/cmake -E make_directory /home/dhruv/Coding/ROS/Abhiyaan/nodes/build/GMock-prefix/src/GMock-stamp
	/usr/bin/cmake -E make_directory /home/dhruv/Coding/ROS/Abhiyaan/nodes/build/GMock-prefix/src
	/usr/bin/cmake -E make_directory /home/dhruv/Coding/ROS/Abhiyaan/nodes/build/GMock-prefix/src/GMock-stamp
	/usr/bin/cmake -E touch /home/dhruv/Coding/ROS/Abhiyaan/nodes/build/GMock-prefix/src/GMock-stamp/GMock-mkdir

GMock-prefix/src/GMock-stamp/GMock-download: GMock-prefix/src/GMock-stamp/GMock-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/dhruv/Coding/ROS/Abhiyaan/nodes/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "No download step for 'GMock'"
	/usr/bin/cmake -E echo_append
	/usr/bin/cmake -E touch /home/dhruv/Coding/ROS/Abhiyaan/nodes/build/GMock-prefix/src/GMock-stamp/GMock-download

GMock-prefix/src/GMock-stamp/GMock-update: GMock-prefix/src/GMock-stamp/GMock-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/dhruv/Coding/ROS/Abhiyaan/nodes/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No update step for 'GMock'"
	/usr/bin/cmake -E echo_append
	/usr/bin/cmake -E touch /home/dhruv/Coding/ROS/Abhiyaan/nodes/build/GMock-prefix/src/GMock-stamp/GMock-update

GMock-prefix/src/GMock-stamp/GMock-patch: GMock-prefix/src/GMock-stamp/GMock-update
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/dhruv/Coding/ROS/Abhiyaan/nodes/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "No patch step for 'GMock'"
	/usr/bin/cmake -E echo_append
	/usr/bin/cmake -E touch /home/dhruv/Coding/ROS/Abhiyaan/nodes/build/GMock-prefix/src/GMock-stamp/GMock-patch

GMock-prefix/src/GMock-stamp/GMock-configure: GMock-prefix/tmp/GMock-cfgcmd.txt
GMock-prefix/src/GMock-stamp/GMock-configure: GMock-prefix/src/GMock-stamp/GMock-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/dhruv/Coding/ROS/Abhiyaan/nodes/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Performing configure step for 'GMock'"
	cd /home/dhruv/Coding/ROS/Abhiyaan/nodes/build/gmock && /usr/bin/cmake -DCMAKE_CXX_COMPILER=/usr/bin/c++ "-DCMAKE_CXX_FLAGS= -g -Wno-old-style-cast -Wno-missing-field-initializers -Wno-ctor-dtor-privacy -Wno-switch-default" "-GUnix Makefiles" /usr/src/googletest/googlemock
	cd /home/dhruv/Coding/ROS/Abhiyaan/nodes/build/gmock && /usr/bin/cmake -E touch /home/dhruv/Coding/ROS/Abhiyaan/nodes/build/GMock-prefix/src/GMock-stamp/GMock-configure

GMock-prefix/src/GMock-stamp/GMock-build: GMock-prefix/src/GMock-stamp/GMock-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/dhruv/Coding/ROS/Abhiyaan/nodes/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing build step for 'GMock'"
	cd /home/dhruv/Coding/ROS/Abhiyaan/nodes/build/gmock && $(MAKE)
	cd /home/dhruv/Coding/ROS/Abhiyaan/nodes/build/gmock && /usr/bin/cmake -E touch /home/dhruv/Coding/ROS/Abhiyaan/nodes/build/GMock-prefix/src/GMock-stamp/GMock-build

GMock: CMakeFiles/GMock
GMock: CMakeFiles/GMock-complete
GMock: GMock-prefix/src/GMock-stamp/GMock-install
GMock: GMock-prefix/src/GMock-stamp/GMock-mkdir
GMock: GMock-prefix/src/GMock-stamp/GMock-download
GMock: GMock-prefix/src/GMock-stamp/GMock-update
GMock: GMock-prefix/src/GMock-stamp/GMock-patch
GMock: GMock-prefix/src/GMock-stamp/GMock-configure
GMock: GMock-prefix/src/GMock-stamp/GMock-build
GMock: CMakeFiles/GMock.dir/build.make

.PHONY : GMock

# Rule to build all files generated by this target.
CMakeFiles/GMock.dir/build: GMock

.PHONY : CMakeFiles/GMock.dir/build

CMakeFiles/GMock.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/GMock.dir/cmake_clean.cmake
.PHONY : CMakeFiles/GMock.dir/clean

CMakeFiles/GMock.dir/depend:
	cd /home/dhruv/Coding/ROS/Abhiyaan/nodes/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dhruv/Coding/ROS/Abhiyaan/nodes/src /home/dhruv/Coding/ROS/Abhiyaan/nodes/src /home/dhruv/Coding/ROS/Abhiyaan/nodes/build /home/dhruv/Coding/ROS/Abhiyaan/nodes/build /home/dhruv/Coding/ROS/Abhiyaan/nodes/build/CMakeFiles/GMock.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/GMock.dir/depend

