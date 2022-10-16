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
sum_lib: Object_files/sumFunction.o
	ar rcs Static_libraries/libsumFunction.lib Object_files/sumFunction.o

# Generates subtract function static library for Windows OS.
subtract_lib: Object_files/subtractFunction.o
	ar rcs Static_libraries/libsubtractFunction.lib Object_files/subtractFunction.o

# Generates sum executable file.
sum_exe: Object_files/main.o Static_libraries/libsumFunction.lib
	gcc Object_files/main.o -LStatic_libraries -lsumFunction -o Executable_files/sumProg

# Generates subtract executable file.
subtract_exe: Object_files/main.o Static_libraries/libsubtractFunction.lib
	gcc Object_files/main.o -LStatic_libraries -lsubtractFunction -o Executable_files/subtractProg