# Execute all the lines below. It can be executed by default, it's to say, just by typing "make" on the console.
all: main_obj sum_obj subtract_obj sum_lib subtract_lib sum_exe subtract_exe

# Generates main.o file.
main_obj: Source_files/main.c Source_files/functionPrototype.h
	gcc -c Source_files/main.c -o Object_files/main.o

# Generates sumFunction.o file.
sum_obj: Source_files/sumFunction.c
	gcc -c Source_files/sumFunction.c -o Object_files/sumFunction.o

# Generates subtractFunction.o file.
subtract_obj: Source_files/subtractFunction.c
	gcc -c Source_files/subtractFunction.c -o Object_files/subtractFunction.o

# Generates sum function static library for Windows OS.
sum_lib_Win: Object_files/sumFunction.o
	ar rcs Windows_static_libraries/libsumFunction.lib Object_files/sumFunction.o

# Generates subtract function static library for Windows OS.
subtract_lib_Win: Object_files/subtractFunction.o
	ar rcs Windows_static_libraries/libsubtractFunction.lib Object_files/subtractFunction.o

# Generates sum function static library for Linux OS.
sum_lib_Lnx: Object_files/sumFunction.o
	ar rcs Linux_static_libraries/libsumFunction.a Object_files/sumFunction.o

# Generates subtract function static library for Linux OS.
subtract_lib_Lnx: Object_files/subtractFunction.o
	ar rcs Linux_static_libraries/libsubtractFunction.a Object_files/subtractFunction.o

# Generates sum executable file for Windows OS.
sum_exe_Win: Object_files/main.o Windows_static_libraries/libsumFunction.lib
	gcc Object_files/main.o -LWindows_static_libraries -lsumFunction -o Windows_executable_files/sumProg

# Generates subtract executable file for Windows OS.
subtract_exe_Win: Object_files/main.o Windows_static_libraries/libsubtractFunction.lib
	gcc Object_files/main.o -LWindows_static_libraries -lsubtractFunction -o Windows_executable_files/subtractProg

# Generates sum executable file for Linux OS.
sum_exe_Lnx: Object_files/main.o Linux_static_libraries/libsumFunction.a
	gcc Object_files/main.o -LLinux_static_libraries -lsumFunction -o Linux_executable_files/sumProg

# Generates subtract executable file for Linux OS.
subtract_exe_Lnx: Object_files/main.o Linux_static_libraries/libsubtractFunction.a
	gcc Object_files/main.o -LLinux_static_libraries -lsubtractFunction -o Linux_executable_files/subtractProg