project <+Project_Name+> is

  Version := "0.1";
  Name    := <+Library_Name+>;

  for Languages use ("Ada");
  for Source_Dirs use ("src");
  for Object_Dir use "obj";
  for Exec_Dir use ".";
  for Source_Files use (<+Source_Files+>);
  for Main use (<+Main_File+>);

  for Library_Name use Name;
  for Library_Dir use "lib";
  for Library_Kind use "dynamic";
  for Library_Version use "lib" & Name & ".so." & Version;

  package Compiler is
    CPU   := ("-m64", "-mssse3", "-march=native", "-fPIC");
    OPT   := ("-O3", "-fomit-frame-pointer");
    WARN  := ("-Wall");

    Ada_Switches :=
      ( "-gnat05", "-gnata", "-gnatE", "-gnato", "-fstack-check", "-gnatW8",
        "-gnateE", "-gnatU", "-gnatf", "-gnatj80"
      );
    for Default_Switches ("Ada") use Ada_Switches & CPU & OPT & WARN;

    C_Switches := ("-O3", "-C99", "-fstack-check");
    for Default_Switches ("C") use C_Switches & CPU & OPT & WARN;

    Fortran_Switches := ();
    for Default_Switches ("Fortran") use Fortran_Switches & CPU & OPT & WARN;
  end Compiler;

  package Linker is

    for Default_Switches ("Ada") use ();
    -- When using Lumen
    for Default_Switches ("Ada") use ("-lGLU", "-lGL", "-ldl", "-lX11");

  end Linker;

end <+Project_Name+>;
