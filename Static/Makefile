src_main	= Source_files/main.c
src_sum		= Source_files/sumFunction.c
src_sub		= Source_files/subtractFunction.c
src_pro		= Source_files/functionPrototype.h

obj_main	= Object_files/main.o
obj_sum		= Object_files/sumFunction.o
obj_sub		= Object_files/sumFunction.o

win_lib_stc_sum	= Windows_static_libraries/libsumFunction.lib
win_lib_stc_sub	= Windows_static_libraries/libsubtractFunction.lib

lnx_lib_stc_sum	= Linux_static_libraries/libsumFunction.a
lnx_lib_stc_sub	= Linux_static_libraries/libsubtractFunction.a

win_exec_sum	= Windows_executable_files/sumProg
win_exec_sub	= Windows_executable_files/subProg

lnx_exec_sum	= Linux_executable_files/sumProg
lnx_exec_sub	= Linux_executable_files/sumProg

# Execute all the rules needed to get the final Windows executables.
Win: main_obj sum_obj subtract_obj sum_lib_Win subtract_lib_Win sum_exe_Win subtract_exe_Win

# Execute all the rules needed to get the final Linux executables.
Lnx: main_obj sum_obj subtract_obj  sum_lib_Lnx subtract_lib_Lnx sum_exe_Lnx subtract_exe_Lnx

# Generates main.o file.
main_obj: $(src_main) $(src_pro)
	gcc -c $(src_main) -o $(obj_main)

# Generates sumFunction.o file.
sum_obj: $(src_sum)
	gcc -c $(src_sum) -o $(obj_sum)

# Generates subtractFunction.o file.
subtract_obj: $(src_sub)
	gcc -c $(src_sub) -o $(obj_sub)

# Generates sum function static library for Windows OS.
sum_lib_Win: $(obj_sum)
	ar rcs $(win_lib_stc_sum) $(obj_sum)

# Generates subtract function static library for Windows OS.
subtract_lib_Win: $(obj_sub)
	ar rcs $(win_lib_stc_sub) $(obj_sub)

# Generates sum function static library for Linux OS.
sum_lib_Lnx: $(obj_sum)
	ar rcs $(lnx_lib_stc_sum) $(obj_sum)

# Generates subtract function static library for Linux OS.
subtract_lib_Lnx: $(obj_sub)
	ar rcs $(lnx_lib_stc_sub) $(obj_sub)

# Generates sum executable file for Windows OS.
sum_exe_Win: $(obj_main) $(win_lib_stc_sum)
	gcc $(obj_main) -LWindows_static_libraries -lsumFunction -o $(win_exec_sum)

# Generates subtract executable file for Windows OS.
subtract_exe_Win: $(obj_main) $(win_lib_stc_sub)
	gcc $(obj_main) -LWindows_static_libraries -lsubtractFunction -o $(win_exec_sub)

# Generates sum executable file for Linux OS.
sum_exe_Lnx: $(obj_main) $(lnx_lib_stc_sum)
	gcc $(obj_main) -LLinux_static_libraries -lsumFunction -o $(lnx_exec_sum)

# Generates subtract executable file for Linux OS.
subtract_exe_Lnx: $(obj_main) $(lnx_lib_stc_sub)
	gcc $(obj_main) -LLinux_static_libraries -lsubtractFunction -o $(lnx_exec_sub)

clean_Lnx:
	rm -f Object_files/* Linux_static_libraries/* Linux_executable_files/*

clean_Win:
	del /s/q Object_files\* Windows_static_libraries\* Windows_executable_files\*