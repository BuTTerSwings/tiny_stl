# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.29

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = D:\ScoopApp\Scoop\apps\cmake\3.29.2\bin\cmake.exe

# The command to remove a file.
RM = D:\ScoopApp\Scoop\apps\cmake\3.29.2\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\admin\code\cpp\tiny_stl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\admin\code\cpp\tiny_stl\build

# Include any dependencies generated for this target.
include test/meta/function/CMakeFiles/function_traits_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/meta/function/CMakeFiles/function_traits_test.dir/compiler_depend.make

# Include the progress variables for this target.
include test/meta/function/CMakeFiles/function_traits_test.dir/progress.make

# Include the compile flags for this target's objects.
include test/meta/function/CMakeFiles/function_traits_test.dir/flags.make

test/meta/function/CMakeFiles/function_traits_test.dir/main.cpp.obj: test/meta/function/CMakeFiles/function_traits_test.dir/flags.make
test/meta/function/CMakeFiles/function_traits_test.dir/main.cpp.obj: test/meta/function/CMakeFiles/function_traits_test.dir/includes_CXX.rsp
test/meta/function/CMakeFiles/function_traits_test.dir/main.cpp.obj: C:/Users/admin/code/cpp/tiny_stl/test/meta/function/main.cpp
test/meta/function/CMakeFiles/function_traits_test.dir/main.cpp.obj: test/meta/function/CMakeFiles/function_traits_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\admin\code\cpp\tiny_stl\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/meta/function/CMakeFiles/function_traits_test.dir/main.cpp.obj"
	cd /d C:\Users\admin\code\cpp\tiny_stl\build\test\meta\function && D:\ScoopApp\Scoop\apps\mingw\current\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/meta/function/CMakeFiles/function_traits_test.dir/main.cpp.obj -MF CMakeFiles\function_traits_test.dir\main.cpp.obj.d -o CMakeFiles\function_traits_test.dir\main.cpp.obj -c C:\Users\admin\code\cpp\tiny_stl\test\meta\function\main.cpp

test/meta/function/CMakeFiles/function_traits_test.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/function_traits_test.dir/main.cpp.i"
	cd /d C:\Users\admin\code\cpp\tiny_stl\build\test\meta\function && D:\ScoopApp\Scoop\apps\mingw\current\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\admin\code\cpp\tiny_stl\test\meta\function\main.cpp > CMakeFiles\function_traits_test.dir\main.cpp.i

test/meta/function/CMakeFiles/function_traits_test.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/function_traits_test.dir/main.cpp.s"
	cd /d C:\Users\admin\code\cpp\tiny_stl\build\test\meta\function && D:\ScoopApp\Scoop\apps\mingw\current\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\admin\code\cpp\tiny_stl\test\meta\function\main.cpp -o CMakeFiles\function_traits_test.dir\main.cpp.s

# Object files for target function_traits_test
function_traits_test_OBJECTS = \
"CMakeFiles/function_traits_test.dir/main.cpp.obj"

# External object files for target function_traits_test
function_traits_test_EXTERNAL_OBJECTS =

C:/Users/admin/code/cpp/tiny_stl/test/meta/function/bin/function_traits_test.exe: test/meta/function/CMakeFiles/function_traits_test.dir/main.cpp.obj
C:/Users/admin/code/cpp/tiny_stl/test/meta/function/bin/function_traits_test.exe: test/meta/function/CMakeFiles/function_traits_test.dir/build.make
C:/Users/admin/code/cpp/tiny_stl/test/meta/function/bin/function_traits_test.exe: test/meta/function/CMakeFiles/function_traits_test.dir/linkLibs.rsp
C:/Users/admin/code/cpp/tiny_stl/test/meta/function/bin/function_traits_test.exe: test/meta/function/CMakeFiles/function_traits_test.dir/objects1.rsp
C:/Users/admin/code/cpp/tiny_stl/test/meta/function/bin/function_traits_test.exe: test/meta/function/CMakeFiles/function_traits_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\admin\code\cpp\tiny_stl\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable C:\Users\admin\code\cpp\tiny_stl\test\meta\function\bin\function_traits_test.exe"
	cd /d C:\Users\admin\code\cpp\tiny_stl\build\test\meta\function && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\function_traits_test.dir\link.txt --verbose=$(VERBOSE)
	cd /d C:\Users\admin\code\cpp\tiny_stl\build\test\meta\function && "C:\Program Files\PowerShell\7\pwsh.exe" -noprofile -executionpolicy Bypass -file D:/ScoopApp/Scoop/apps/vcpkg/current/scripts/buildsystems/msbuild/applocal.ps1 -targetBinary C:/Users/admin/code/cpp/tiny_stl/test/meta/function/bin/function_traits_test.exe -installedDir D:/ScoopApp/Scoop/apps/vcpkg/current/installed/x64-windows/debug/bin -OutVariable out

# Rule to build all files generated by this target.
test/meta/function/CMakeFiles/function_traits_test.dir/build: C:/Users/admin/code/cpp/tiny_stl/test/meta/function/bin/function_traits_test.exe
.PHONY : test/meta/function/CMakeFiles/function_traits_test.dir/build

test/meta/function/CMakeFiles/function_traits_test.dir/clean:
	cd /d C:\Users\admin\code\cpp\tiny_stl\build\test\meta\function && $(CMAKE_COMMAND) -P CMakeFiles\function_traits_test.dir\cmake_clean.cmake
.PHONY : test/meta/function/CMakeFiles/function_traits_test.dir/clean

test/meta/function/CMakeFiles/function_traits_test.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\admin\code\cpp\tiny_stl C:\Users\admin\code\cpp\tiny_stl\test\meta\function C:\Users\admin\code\cpp\tiny_stl\build C:\Users\admin\code\cpp\tiny_stl\build\test\meta\function C:\Users\admin\code\cpp\tiny_stl\build\test\meta\function\CMakeFiles\function_traits_test.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : test/meta/function/CMakeFiles/function_traits_test.dir/depend

