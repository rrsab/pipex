# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/salyce/CLionProjects/ft_pipex

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/salyce/CLionProjects/ft_pipex/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/ft_pipex.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ft_pipex.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ft_pipex.dir/flags.make

CMakeFiles/ft_pipex.dir/pipex.c.o: CMakeFiles/ft_pipex.dir/flags.make
CMakeFiles/ft_pipex.dir/pipex.c.o: ../pipex.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/salyce/CLionProjects/ft_pipex/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/ft_pipex.dir/pipex.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ft_pipex.dir/pipex.c.o -c /Users/salyce/CLionProjects/ft_pipex/pipex.c

CMakeFiles/ft_pipex.dir/pipex.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ft_pipex.dir/pipex.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/salyce/CLionProjects/ft_pipex/pipex.c > CMakeFiles/ft_pipex.dir/pipex.c.i

CMakeFiles/ft_pipex.dir/pipex.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ft_pipex.dir/pipex.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/salyce/CLionProjects/ft_pipex/pipex.c -o CMakeFiles/ft_pipex.dir/pipex.c.s

CMakeFiles/ft_pipex.dir/libft/ft_putstr_fd.c.o: CMakeFiles/ft_pipex.dir/flags.make
CMakeFiles/ft_pipex.dir/libft/ft_putstr_fd.c.o: ../libft/ft_putstr_fd.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/salyce/CLionProjects/ft_pipex/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/ft_pipex.dir/libft/ft_putstr_fd.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ft_pipex.dir/libft/ft_putstr_fd.c.o -c /Users/salyce/CLionProjects/ft_pipex/libft/ft_putstr_fd.c

CMakeFiles/ft_pipex.dir/libft/ft_putstr_fd.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ft_pipex.dir/libft/ft_putstr_fd.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/salyce/CLionProjects/ft_pipex/libft/ft_putstr_fd.c > CMakeFiles/ft_pipex.dir/libft/ft_putstr_fd.c.i

CMakeFiles/ft_pipex.dir/libft/ft_putstr_fd.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ft_pipex.dir/libft/ft_putstr_fd.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/salyce/CLionProjects/ft_pipex/libft/ft_putstr_fd.c -o CMakeFiles/ft_pipex.dir/libft/ft_putstr_fd.c.s

CMakeFiles/ft_pipex.dir/libft/ft_strlen.c.o: CMakeFiles/ft_pipex.dir/flags.make
CMakeFiles/ft_pipex.dir/libft/ft_strlen.c.o: ../libft/ft_strlen.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/salyce/CLionProjects/ft_pipex/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/ft_pipex.dir/libft/ft_strlen.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ft_pipex.dir/libft/ft_strlen.c.o -c /Users/salyce/CLionProjects/ft_pipex/libft/ft_strlen.c

CMakeFiles/ft_pipex.dir/libft/ft_strlen.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ft_pipex.dir/libft/ft_strlen.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/salyce/CLionProjects/ft_pipex/libft/ft_strlen.c > CMakeFiles/ft_pipex.dir/libft/ft_strlen.c.i

CMakeFiles/ft_pipex.dir/libft/ft_strlen.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ft_pipex.dir/libft/ft_strlen.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/salyce/CLionProjects/ft_pipex/libft/ft_strlen.c -o CMakeFiles/ft_pipex.dir/libft/ft_strlen.c.s

CMakeFiles/ft_pipex.dir/libft/ft_split.c.o: CMakeFiles/ft_pipex.dir/flags.make
CMakeFiles/ft_pipex.dir/libft/ft_split.c.o: ../libft/ft_split.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/salyce/CLionProjects/ft_pipex/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/ft_pipex.dir/libft/ft_split.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ft_pipex.dir/libft/ft_split.c.o -c /Users/salyce/CLionProjects/ft_pipex/libft/ft_split.c

CMakeFiles/ft_pipex.dir/libft/ft_split.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ft_pipex.dir/libft/ft_split.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/salyce/CLionProjects/ft_pipex/libft/ft_split.c > CMakeFiles/ft_pipex.dir/libft/ft_split.c.i

CMakeFiles/ft_pipex.dir/libft/ft_split.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ft_pipex.dir/libft/ft_split.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/salyce/CLionProjects/ft_pipex/libft/ft_split.c -o CMakeFiles/ft_pipex.dir/libft/ft_split.c.s

CMakeFiles/ft_pipex.dir/libft/ft_strjoin3.c.o: CMakeFiles/ft_pipex.dir/flags.make
CMakeFiles/ft_pipex.dir/libft/ft_strjoin3.c.o: ../libft/ft_strjoin3.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/salyce/CLionProjects/ft_pipex/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/ft_pipex.dir/libft/ft_strjoin3.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ft_pipex.dir/libft/ft_strjoin3.c.o -c /Users/salyce/CLionProjects/ft_pipex/libft/ft_strjoin3.c

CMakeFiles/ft_pipex.dir/libft/ft_strjoin3.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ft_pipex.dir/libft/ft_strjoin3.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/salyce/CLionProjects/ft_pipex/libft/ft_strjoin3.c > CMakeFiles/ft_pipex.dir/libft/ft_strjoin3.c.i

CMakeFiles/ft_pipex.dir/libft/ft_strjoin3.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ft_pipex.dir/libft/ft_strjoin3.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/salyce/CLionProjects/ft_pipex/libft/ft_strjoin3.c -o CMakeFiles/ft_pipex.dir/libft/ft_strjoin3.c.s

CMakeFiles/ft_pipex.dir/libft/ft_strncmp.c.o: CMakeFiles/ft_pipex.dir/flags.make
CMakeFiles/ft_pipex.dir/libft/ft_strncmp.c.o: ../libft/ft_strncmp.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/salyce/CLionProjects/ft_pipex/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/ft_pipex.dir/libft/ft_strncmp.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ft_pipex.dir/libft/ft_strncmp.c.o -c /Users/salyce/CLionProjects/ft_pipex/libft/ft_strncmp.c

CMakeFiles/ft_pipex.dir/libft/ft_strncmp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ft_pipex.dir/libft/ft_strncmp.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/salyce/CLionProjects/ft_pipex/libft/ft_strncmp.c > CMakeFiles/ft_pipex.dir/libft/ft_strncmp.c.i

CMakeFiles/ft_pipex.dir/libft/ft_strncmp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ft_pipex.dir/libft/ft_strncmp.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/salyce/CLionProjects/ft_pipex/libft/ft_strncmp.c -o CMakeFiles/ft_pipex.dir/libft/ft_strncmp.c.s

CMakeFiles/ft_pipex.dir/libft/ft_strchr.c.o: CMakeFiles/ft_pipex.dir/flags.make
CMakeFiles/ft_pipex.dir/libft/ft_strchr.c.o: ../libft/ft_strchr.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/salyce/CLionProjects/ft_pipex/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/ft_pipex.dir/libft/ft_strchr.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ft_pipex.dir/libft/ft_strchr.c.o -c /Users/salyce/CLionProjects/ft_pipex/libft/ft_strchr.c

CMakeFiles/ft_pipex.dir/libft/ft_strchr.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ft_pipex.dir/libft/ft_strchr.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/salyce/CLionProjects/ft_pipex/libft/ft_strchr.c > CMakeFiles/ft_pipex.dir/libft/ft_strchr.c.i

CMakeFiles/ft_pipex.dir/libft/ft_strchr.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ft_pipex.dir/libft/ft_strchr.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/salyce/CLionProjects/ft_pipex/libft/ft_strchr.c -o CMakeFiles/ft_pipex.dir/libft/ft_strchr.c.s

CMakeFiles/ft_pipex.dir/libft/ft_strdup.c.o: CMakeFiles/ft_pipex.dir/flags.make
CMakeFiles/ft_pipex.dir/libft/ft_strdup.c.o: ../libft/ft_strdup.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/salyce/CLionProjects/ft_pipex/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/ft_pipex.dir/libft/ft_strdup.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ft_pipex.dir/libft/ft_strdup.c.o -c /Users/salyce/CLionProjects/ft_pipex/libft/ft_strdup.c

CMakeFiles/ft_pipex.dir/libft/ft_strdup.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ft_pipex.dir/libft/ft_strdup.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/salyce/CLionProjects/ft_pipex/libft/ft_strdup.c > CMakeFiles/ft_pipex.dir/libft/ft_strdup.c.i

CMakeFiles/ft_pipex.dir/libft/ft_strdup.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ft_pipex.dir/libft/ft_strdup.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/salyce/CLionProjects/ft_pipex/libft/ft_strdup.c -o CMakeFiles/ft_pipex.dir/libft/ft_strdup.c.s

CMakeFiles/ft_pipex.dir/libft/ft_strjoin.c.o: CMakeFiles/ft_pipex.dir/flags.make
CMakeFiles/ft_pipex.dir/libft/ft_strjoin.c.o: ../libft/ft_strjoin.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/salyce/CLionProjects/ft_pipex/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/ft_pipex.dir/libft/ft_strjoin.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ft_pipex.dir/libft/ft_strjoin.c.o -c /Users/salyce/CLionProjects/ft_pipex/libft/ft_strjoin.c

CMakeFiles/ft_pipex.dir/libft/ft_strjoin.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ft_pipex.dir/libft/ft_strjoin.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/salyce/CLionProjects/ft_pipex/libft/ft_strjoin.c > CMakeFiles/ft_pipex.dir/libft/ft_strjoin.c.i

CMakeFiles/ft_pipex.dir/libft/ft_strjoin.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ft_pipex.dir/libft/ft_strjoin.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/salyce/CLionProjects/ft_pipex/libft/ft_strjoin.c -o CMakeFiles/ft_pipex.dir/libft/ft_strjoin.c.s

CMakeFiles/ft_pipex.dir/libft/ft_strlcpy.c.o: CMakeFiles/ft_pipex.dir/flags.make
CMakeFiles/ft_pipex.dir/libft/ft_strlcpy.c.o: ../libft/ft_strlcpy.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/salyce/CLionProjects/ft_pipex/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/ft_pipex.dir/libft/ft_strlcpy.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ft_pipex.dir/libft/ft_strlcpy.c.o -c /Users/salyce/CLionProjects/ft_pipex/libft/ft_strlcpy.c

CMakeFiles/ft_pipex.dir/libft/ft_strlcpy.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ft_pipex.dir/libft/ft_strlcpy.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/salyce/CLionProjects/ft_pipex/libft/ft_strlcpy.c > CMakeFiles/ft_pipex.dir/libft/ft_strlcpy.c.i

CMakeFiles/ft_pipex.dir/libft/ft_strlcpy.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ft_pipex.dir/libft/ft_strlcpy.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/salyce/CLionProjects/ft_pipex/libft/ft_strlcpy.c -o CMakeFiles/ft_pipex.dir/libft/ft_strlcpy.c.s

CMakeFiles/ft_pipex.dir/gnl/get_next_line.c.o: CMakeFiles/ft_pipex.dir/flags.make
CMakeFiles/ft_pipex.dir/gnl/get_next_line.c.o: ../gnl/get_next_line.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/salyce/CLionProjects/ft_pipex/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/ft_pipex.dir/gnl/get_next_line.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ft_pipex.dir/gnl/get_next_line.c.o -c /Users/salyce/CLionProjects/ft_pipex/gnl/get_next_line.c

CMakeFiles/ft_pipex.dir/gnl/get_next_line.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ft_pipex.dir/gnl/get_next_line.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/salyce/CLionProjects/ft_pipex/gnl/get_next_line.c > CMakeFiles/ft_pipex.dir/gnl/get_next_line.c.i

CMakeFiles/ft_pipex.dir/gnl/get_next_line.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ft_pipex.dir/gnl/get_next_line.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/salyce/CLionProjects/ft_pipex/gnl/get_next_line.c -o CMakeFiles/ft_pipex.dir/gnl/get_next_line.c.s

CMakeFiles/ft_pipex.dir/libft/ft_substr.c.o: CMakeFiles/ft_pipex.dir/flags.make
CMakeFiles/ft_pipex.dir/libft/ft_substr.c.o: ../libft/ft_substr.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/salyce/CLionProjects/ft_pipex/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object CMakeFiles/ft_pipex.dir/libft/ft_substr.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ft_pipex.dir/libft/ft_substr.c.o -c /Users/salyce/CLionProjects/ft_pipex/libft/ft_substr.c

CMakeFiles/ft_pipex.dir/libft/ft_substr.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ft_pipex.dir/libft/ft_substr.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/salyce/CLionProjects/ft_pipex/libft/ft_substr.c > CMakeFiles/ft_pipex.dir/libft/ft_substr.c.i

CMakeFiles/ft_pipex.dir/libft/ft_substr.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ft_pipex.dir/libft/ft_substr.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/salyce/CLionProjects/ft_pipex/libft/ft_substr.c -o CMakeFiles/ft_pipex.dir/libft/ft_substr.c.s

CMakeFiles/ft_pipex.dir/libft/ft_memcpy.c.o: CMakeFiles/ft_pipex.dir/flags.make
CMakeFiles/ft_pipex.dir/libft/ft_memcpy.c.o: ../libft/ft_memcpy.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/salyce/CLionProjects/ft_pipex/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object CMakeFiles/ft_pipex.dir/libft/ft_memcpy.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ft_pipex.dir/libft/ft_memcpy.c.o -c /Users/salyce/CLionProjects/ft_pipex/libft/ft_memcpy.c

CMakeFiles/ft_pipex.dir/libft/ft_memcpy.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ft_pipex.dir/libft/ft_memcpy.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/salyce/CLionProjects/ft_pipex/libft/ft_memcpy.c > CMakeFiles/ft_pipex.dir/libft/ft_memcpy.c.i

CMakeFiles/ft_pipex.dir/libft/ft_memcpy.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ft_pipex.dir/libft/ft_memcpy.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/salyce/CLionProjects/ft_pipex/libft/ft_memcpy.c -o CMakeFiles/ft_pipex.dir/libft/ft_memcpy.c.s

# Object files for target ft_pipex
ft_pipex_OBJECTS = \
"CMakeFiles/ft_pipex.dir/pipex.c.o" \
"CMakeFiles/ft_pipex.dir/libft/ft_putstr_fd.c.o" \
"CMakeFiles/ft_pipex.dir/libft/ft_strlen.c.o" \
"CMakeFiles/ft_pipex.dir/libft/ft_split.c.o" \
"CMakeFiles/ft_pipex.dir/libft/ft_strjoin3.c.o" \
"CMakeFiles/ft_pipex.dir/libft/ft_strncmp.c.o" \
"CMakeFiles/ft_pipex.dir/libft/ft_strchr.c.o" \
"CMakeFiles/ft_pipex.dir/libft/ft_strdup.c.o" \
"CMakeFiles/ft_pipex.dir/libft/ft_strjoin.c.o" \
"CMakeFiles/ft_pipex.dir/libft/ft_strlcpy.c.o" \
"CMakeFiles/ft_pipex.dir/gnl/get_next_line.c.o" \
"CMakeFiles/ft_pipex.dir/libft/ft_substr.c.o" \
"CMakeFiles/ft_pipex.dir/libft/ft_memcpy.c.o"

# External object files for target ft_pipex
ft_pipex_EXTERNAL_OBJECTS =

ft_pipex: CMakeFiles/ft_pipex.dir/pipex.c.o
ft_pipex: CMakeFiles/ft_pipex.dir/libft/ft_putstr_fd.c.o
ft_pipex: CMakeFiles/ft_pipex.dir/libft/ft_strlen.c.o
ft_pipex: CMakeFiles/ft_pipex.dir/libft/ft_split.c.o
ft_pipex: CMakeFiles/ft_pipex.dir/libft/ft_strjoin3.c.o
ft_pipex: CMakeFiles/ft_pipex.dir/libft/ft_strncmp.c.o
ft_pipex: CMakeFiles/ft_pipex.dir/libft/ft_strchr.c.o
ft_pipex: CMakeFiles/ft_pipex.dir/libft/ft_strdup.c.o
ft_pipex: CMakeFiles/ft_pipex.dir/libft/ft_strjoin.c.o
ft_pipex: CMakeFiles/ft_pipex.dir/libft/ft_strlcpy.c.o
ft_pipex: CMakeFiles/ft_pipex.dir/gnl/get_next_line.c.o
ft_pipex: CMakeFiles/ft_pipex.dir/libft/ft_substr.c.o
ft_pipex: CMakeFiles/ft_pipex.dir/libft/ft_memcpy.c.o
ft_pipex: CMakeFiles/ft_pipex.dir/build.make
ft_pipex: CMakeFiles/ft_pipex.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/salyce/CLionProjects/ft_pipex/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking C executable ft_pipex"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ft_pipex.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ft_pipex.dir/build: ft_pipex

.PHONY : CMakeFiles/ft_pipex.dir/build

CMakeFiles/ft_pipex.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ft_pipex.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ft_pipex.dir/clean

CMakeFiles/ft_pipex.dir/depend:
	cd /Users/salyce/CLionProjects/ft_pipex/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/salyce/CLionProjects/ft_pipex /Users/salyce/CLionProjects/ft_pipex /Users/salyce/CLionProjects/ft_pipex/cmake-build-debug /Users/salyce/CLionProjects/ft_pipex/cmake-build-debug /Users/salyce/CLionProjects/ft_pipex/cmake-build-debug/CMakeFiles/ft_pipex.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ft_pipex.dir/depend

