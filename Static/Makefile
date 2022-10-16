main_obj: Source_files/main.c Source_files/functionPrototype.h
	gcc -c Source_files/main.c -o Object_files/main.o

sum_obj: Source_files/sumFunction.c
	gcc -c Source_files/sumFunction.c -o Object_files/sumFunction.o

subtract_obj: Source_files/subtractFunction.c
	gcc -c Source_files/subtractFunction.c -o Object_files/subtractFunction.o

sum_lib: Object_files/sumFunction.o
	ar rcs Static_libraries/libsumFunction.lib Object_files/sumFunction.o

subtract_lib: Object_files/subtractFunction.o
	ar rcs Static_libraries/libsubtractFunction.lib Object_files/subtractFunction.o

sum_exe: Object_files/main.o Static_libraries/libsumFunction.lib
	gcc Object_files/main.o -LStatic_libraries -lsumFunction -o Executable_files/sumProg

subtract_exe: Object_files/main.o Static_libraries/libsubtractFunction.lib
	gcc Object_files/main.o -LStatic_libraries -lsubtractFunction -o Executable_files/subtractProg