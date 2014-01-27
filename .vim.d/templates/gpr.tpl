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
    STYLE := ("-gnaty2aAbdefhiklM80nOprSux");

    Ada_Switches :=
      ( "-gnat05", "-gnata", "-gnato", "-fstack-check", "-gnatW8",
        "-gnateE", "-gnatU", "-gnatf", "-gnatj80", "-gnatwa", "-gnatn"
      );
    for Default_Switches ("Ada") use Ada_Switches & CPU & OPT & WARN & STYLE;

    C_Switches := ("-O3", "-C99", "-fstack-check");
    for Default_Switches ("C") use C_Switches & CPU & OPT & WARN;

    Fortran_Switches := ();
    for Default_Switches ("Fortran") use Fortran_Switches & CPU & OPT & WARN;
  end Compiler;

  package Linker is
    -- When using Lumen add: "-lGLU", "-lGL", "-ldl", "-lX11"
    -- When using Imago add: "-lIL", "-lILU", "-lILUT" on top of Lumen
    -- When using Oto   add: "-lalut", "-lopenal"
    for Default_Switches ("Ada") use ();
  end Linker;

end <+Project_Name+>;
