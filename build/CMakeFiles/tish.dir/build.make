# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = "/mnt/c/Uni/Y2SEM2/CPS1012-OSs&SP/Assignment/repo"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/mnt/c/Uni/Y2SEM2/CPS1012-OSs&SP/Assignment/repo/build"

# Include any dependencies generated for this target.
include CMakeFiles/tish.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/tish.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tish.dir/flags.make

CMakeFiles/tish.dir/libs/linenoise.c.o: CMakeFiles/tish.dir/flags.make
CMakeFiles/tish.dir/libs/linenoise.c.o: ../libs/linenoise.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/c/Uni/Y2SEM2/CPS1012-OSs&SP/Assignment/repo/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/tish.dir/libs/linenoise.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tish.dir/libs/linenoise.c.o   -c "/mnt/c/Uni/Y2SEM2/CPS1012-OSs&SP/Assignment/repo/libs/linenoise.c"

CMakeFiles/tish.dir/libs/linenoise.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tish.dir/libs/linenoise.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/mnt/c/Uni/Y2SEM2/CPS1012-OSs&SP/Assignment/repo/libs/linenoise.c" > CMakeFiles/tish.dir/libs/linenoise.c.i

CMakeFiles/tish.dir/libs/linenoise.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tish.dir/libs/linenoise.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/mnt/c/Uni/Y2SEM2/CPS1012-OSs&SP/Assignment/repo/libs/linenoise.c" -o CMakeFiles/tish.dir/libs/linenoise.c.s

CMakeFiles/tish.dir/libs/tfetch.c.o: CMakeFiles/tish.dir/flags.make
CMakeFiles/tish.dir/libs/tfetch.c.o: ../libs/tfetch.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/c/Uni/Y2SEM2/CPS1012-OSs&SP/Assignment/repo/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/tish.dir/libs/tfetch.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tish.dir/libs/tfetch.c.o   -c "/mnt/c/Uni/Y2SEM2/CPS1012-OSs&SP/Assignment/repo/libs/tfetch.c"

CMakeFiles/tish.dir/libs/tfetch.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tish.dir/libs/tfetch.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/mnt/c/Uni/Y2SEM2/CPS1012-OSs&SP/Assignment/repo/libs/tfetch.c" > CMakeFiles/tish.dir/libs/tfetch.c.i

CMakeFiles/tish.dir/libs/tfetch.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tish.dir/libs/tfetch.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/mnt/c/Uni/Y2SEM2/CPS1012-OSs&SP/Assignment/repo/libs/tfetch.c" -o CMakeFiles/tish.dir/libs/tfetch.c.s

CMakeFiles/tish.dir/src/tish.c.o: CMakeFiles/tish.dir/flags.make
CMakeFiles/tish.dir/src/tish.c.o: ../src/tish.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/c/Uni/Y2SEM2/CPS1012-OSs&SP/Assignment/repo/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/tish.dir/src/tish.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tish.dir/src/tish.c.o   -c "/mnt/c/Uni/Y2SEM2/CPS1012-OSs&SP/Assignment/repo/src/tish.c"

CMakeFiles/tish.dir/src/tish.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tish.dir/src/tish.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/mnt/c/Uni/Y2SEM2/CPS1012-OSs&SP/Assignment/repo/src/tish.c" > CMakeFiles/tish.dir/src/tish.c.i

CMakeFiles/tish.dir/src/tish.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tish.dir/src/tish.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/mnt/c/Uni/Y2SEM2/CPS1012-OSs&SP/Assignment/repo/src/tish.c" -o CMakeFiles/tish.dir/src/tish.c.s

CMakeFiles/tish.dir/src/io_scanning.c.o: CMakeFiles/tish.dir/flags.make
CMakeFiles/tish.dir/src/io_scanning.c.o: ../src/io_scanning.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/c/Uni/Y2SEM2/CPS1012-OSs&SP/Assignment/repo/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/tish.dir/src/io_scanning.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tish.dir/src/io_scanning.c.o   -c "/mnt/c/Uni/Y2SEM2/CPS1012-OSs&SP/Assignment/repo/src/io_scanning.c"

CMakeFiles/tish.dir/src/io_scanning.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tish.dir/src/io_scanning.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/mnt/c/Uni/Y2SEM2/CPS1012-OSs&SP/Assignment/repo/src/io_scanning.c" > CMakeFiles/tish.dir/src/io_scanning.c.i

CMakeFiles/tish.dir/src/io_scanning.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tish.dir/src/io_scanning.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/mnt/c/Uni/Y2SEM2/CPS1012-OSs&SP/Assignment/repo/src/io_scanning.c" -o CMakeFiles/tish.dir/src/io_scanning.c.s

CMakeFiles/tish.dir/src/commands.c.o: CMakeFiles/tish.dir/flags.make
CMakeFiles/tish.dir/src/commands.c.o: ../src/commands.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/c/Uni/Y2SEM2/CPS1012-OSs&SP/Assignment/repo/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/tish.dir/src/commands.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tish.dir/src/commands.c.o   -c "/mnt/c/Uni/Y2SEM2/CPS1012-OSs&SP/Assignment/repo/src/commands.c"

CMakeFiles/tish.dir/src/commands.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tish.dir/src/commands.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/mnt/c/Uni/Y2SEM2/CPS1012-OSs&SP/Assignment/repo/src/commands.c" > CMakeFiles/tish.dir/src/commands.c.i

CMakeFiles/tish.dir/src/commands.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tish.dir/src/commands.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/mnt/c/Uni/Y2SEM2/CPS1012-OSs&SP/Assignment/repo/src/commands.c" -o CMakeFiles/tish.dir/src/commands.c.s

CMakeFiles/tish.dir/src/proc_control.c.o: CMakeFiles/tish.dir/flags.make
CMakeFiles/tish.dir/src/proc_control.c.o: ../src/proc_control.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/c/Uni/Y2SEM2/CPS1012-OSs&SP/Assignment/repo/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/tish.dir/src/proc_control.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tish.dir/src/proc_control.c.o   -c "/mnt/c/Uni/Y2SEM2/CPS1012-OSs&SP/Assignment/repo/src/proc_control.c"

CMakeFiles/tish.dir/src/proc_control.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tish.dir/src/proc_control.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/mnt/c/Uni/Y2SEM2/CPS1012-OSs&SP/Assignment/repo/src/proc_control.c" > CMakeFiles/tish.dir/src/proc_control.c.i

CMakeFiles/tish.dir/src/proc_control.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tish.dir/src/proc_control.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/mnt/c/Uni/Y2SEM2/CPS1012-OSs&SP/Assignment/repo/src/proc_control.c" -o CMakeFiles/tish.dir/src/proc_control.c.s

# Object files for target tish
tish_OBJECTS = \
"CMakeFiles/tish.dir/libs/linenoise.c.o" \
"CMakeFiles/tish.dir/libs/tfetch.c.o" \
"CMakeFiles/tish.dir/src/tish.c.o" \
"CMakeFiles/tish.dir/src/io_scanning.c.o" \
"CMakeFiles/tish.dir/src/commands.c.o" \
"CMakeFiles/tish.dir/src/proc_control.c.o"

# External object files for target tish
tish_EXTERNAL_OBJECTS =

tish: CMakeFiles/tish.dir/libs/linenoise.c.o
tish: CMakeFiles/tish.dir/libs/tfetch.c.o
tish: CMakeFiles/tish.dir/src/tish.c.o
tish: CMakeFiles/tish.dir/src/io_scanning.c.o
tish: CMakeFiles/tish.dir/src/commands.c.o
tish: CMakeFiles/tish.dir/src/proc_control.c.o
tish: CMakeFiles/tish.dir/build.make
tish: CMakeFiles/tish.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/mnt/c/Uni/Y2SEM2/CPS1012-OSs&SP/Assignment/repo/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Linking C executable tish"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tish.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tish.dir/build: tish

.PHONY : CMakeFiles/tish.dir/build

CMakeFiles/tish.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tish.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tish.dir/clean

CMakeFiles/tish.dir/depend:
	cd "/mnt/c/Uni/Y2SEM2/CPS1012-OSs&SP/Assignment/repo/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/mnt/c/Uni/Y2SEM2/CPS1012-OSs&SP/Assignment/repo" "/mnt/c/Uni/Y2SEM2/CPS1012-OSs&SP/Assignment/repo" "/mnt/c/Uni/Y2SEM2/CPS1012-OSs&SP/Assignment/repo/build" "/mnt/c/Uni/Y2SEM2/CPS1012-OSs&SP/Assignment/repo/build" "/mnt/c/Uni/Y2SEM2/CPS1012-OSs&SP/Assignment/repo/build/CMakeFiles/tish.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/tish.dir/depend

