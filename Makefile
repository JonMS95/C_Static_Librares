src_main	= Source_files/main.c
src_sum		= Source_files/sumFunction.c
src_sub		= Source_files/subtractFunction.c
src_pro		= Source_files/functionPrototype.h

obj_main	= Object_files/main.o
obj_sum		= Object_files/sumFunction.o
obj_sub		= Object_files/subtractFunction.o

lib_sum		= Static_libraries/libsumFunction.a
lib_sub		= Static_libraries/libsubtractFunction.a

exec_sum	= Executable_files/sumProg
exec_sub	= Executable_files/subProg

# Execute all the rules needed to get the final Linux executables.
all: directories clean main_obj sum_obj subtract_obj sum_lib_Lnx subtract_lib_Lnx sum_exe_Lnx subtract_exe_Lnx test

directories:
	@./Shell_files/directories.sh

# Generates main.o file.
main_obj: $(src_main) $(src_pro)
	gcc -c $(src_main) -o $(obj_main)

# Generates sumFunction.o file.
sum_obj: $(src_sum)
	gcc -c $(src_sum) -o $(obj_sum)

# Generates subtractFunction.o file.
subtract_obj: $(src_sub)
	gcc -c $(src_sub) -o $(obj_sub)

# Generates sum function static library for Linux OS.
sum_lib: $(obj_sum)
	ar rcs $(lib_sum) $(obj_sum)

# Generates subtract function static library for Linux OS.
subtract_lib: $(obj_sub)
	ar rcs $(lib_sub) $(obj_sub)

# Generates sum executable file for Linux OS.
sum_exe: $(obj_main) $(lib_sum)
	gcc $(obj_main) -LStatic_libraries -lsumFunction -o $(exec_sum)

# Generates subtract executable file for Linux OS.
subtract_exe: $(obj_main) $(lib_sub)
	gcc $(obj_main) -LStatic_libraries -lsubtractFunction -o $(exec_sub)

rm_obj:
	rm -rf Object_files

clean:
	rm -f Static_libraries/* Executable_files/*

test:
	@./Shell_files/test.sh