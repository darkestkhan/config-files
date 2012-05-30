project <+Project_Name+> is

  for Languages use ("Ada");
  for Source_Dirs use ("src");
  for Object_Dir use "obj";
  for Exec_Dir use ".";
  for Source_Files use (<+Source_Files+>);
  for Main use (<+Main_File+>);

  package Compiler is
    CPU   := ("-m64", "-mssse3", "-march=native");
    OPT   := ("-O3", "-fomit-frame-pointer");
    WARN  := ("-Wall");

    Ada_Switches := ("-gnat05", "-gnata", "-gnatE", "-gnato", "-fstack-check");
    for Default_Switches ("Ada") use Ada_Switches & CPU & OPT & WARN;

    C_Switches := ("-O3", "-C99", "-fstack-check");
    for Default_Switches ("C") use C_Switches & CPU & OPT & WARN;

    Fortran_Switches := ();
    for Default_Switches ("Fortran") use Fortran_Switches & CPU & OPT & WARN;
  end Compiler;

end <+Project_Name+>;
