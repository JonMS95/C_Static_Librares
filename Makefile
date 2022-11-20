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
all: directories clean main.o sum.o subtract.o sum_lib subtract_lib sum subtract rm_obj_lib test

directories:
	@./Shell_files/directories.sh

# Generates main.o file.
main.o: $(src_main) $(src_pro)
	gcc -g -c $(src_main) -o $(obj_main)

# Generates sumFunction.o file.
sum.o: $(src_sum)
	gcc -g -c $(src_sum) -o $(obj_sum)

# Generates subtractFunction.o file.
subtract.o: $(src_sub)
	gcc -g -c $(src_sub) -o $(obj_sub)

# Generates sum function static library for Linux OS.
sum_lib: $(obj_sum)
	ar rcs $(lib_sum) $(obj_sum)

# Generates subtract function static library for Linux OS.
subtract_lib: $(obj_sub)
	ar rcs $(lib_sub) $(obj_sub)

# Generates sum executable file for Linux OS.
sum: $(obj_main) $(lib_sum)
	gcc $(obj_main) -LStatic_libraries -lsumFunction -o $(exec_sum)

# Generates subtract executable file for Linux OS.
subtract: $(obj_main) $(lib_sub)
	gcc $(obj_main) -LStatic_libraries -lsubtractFunction -o $(exec_sub)

# Libraries could be deleted too after making the final executables,
# as they are already built-in within those executable files.
rm_obj_lib:
	rm -rf Object_files Static_libraries

clean:
	rm -rf Executable_files/*

test:
	@./Shell_files/test.sh
