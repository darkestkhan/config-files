project <+Project_Name+> is

  for Languages use ("Ada");
  for Source_Dirs use ("src");
  for Object_Dir use "obj";
  for Exec_Dir use ".";
  for Source_Files use (<+Source_Files+>);
  for Main use (<+Main_File+>);

  package Compiler is
    CPU := ("-m64", "-mssse3", "-march=core2");

    Ada_Switches := ("-O3", "-fomit-frame-pointer", "-Wall", "-gnat05", "-gnata", "-gnatE", "-gnato", "-fstack-check");
    for Default_Switches ("Ada") use Ada_Switches & CPU;

    C_Switches := ("-O3", "-fomit-frame-pointer", "-Wall", "-C99", "-fstack-check");
    for Default_Switches ("C") use C_Switches & CPU;

    Fortran_Switches := ("-O3", "-fomit-frame-pointer", "-Wall");
    for Default_Switches ("Fortran") use Fortran_Switches & CPU;
  end Compiler;

end <+Project_Name+>;
