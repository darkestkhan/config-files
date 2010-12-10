with Ada.Text_Io; use Ada.Text_Io;
with Ada.Integer_Text_Io; use Ada.Integer_Text_Io;

procedure Stupid_Compress is
   Text: String ( 1 .. 80 );
   Text2: String ( 1 .. 80 );
   -- compress given input
   procedure Compress ( Input: in String ) is
      
      -- need procedure compress refactoring in order to make useful
      -- count number of repeats given char is in text
      procedure Count_Repeats ( Input: in String; Char: in Character; Pos: in out Positive; Rep: in out positive ) is
      begin
	 Rep := 1;
	 loop
	    if Pos = Input'Last then
	       return;
	    end if;
	    
	    if Char = Input ( Pos + 1 ) then
	       Rep := Rep + 1;
	       Pos := Pos + 1;
	    else
	       exit;
	    end if;
	 end loop;
      end Count_Repeats;
      
      -- put compressed string
      procedure Put_Compress ( Rep: in out Positive; Char: in Character ) is
      begin
	 while Rep > 9 loop
	    Put ( '@' );
	    Put ( 9, Width => 1 );
	    Put ( Char );
	    Rep := Rep - 9;
	 end loop;
	 
	 Put ( '@' );
	 Put ( Rep, Width => 1 );
	 Put ( Char );
	 
	 Rep := 1;
      end Put_Compress;      
      
      Pos: Positive := 1; -- current position in text;
      Rep: Positive := 1; -- number of repetitions of char;
      Char: Character := ' '; -- holds current character;
      
   begin      
      loop
	 Char := Input ( Pos );
	 Count_Repeats ( Input, Input ( Pos ), Pos, Rep );
	 if Rep > 3 then
	    Put_Compress ( Rep, Char );
	 else
	    for I in 1 .. Rep loop
	       Put ( Char );
	    end loop;
	 end if;
	 
	 -- check pos
	 if Pos = Input'Last then
	    exit;
	 else
	    Pos := Pos + 1;
	 end if;
	 
      end loop;
   end Compress;
   
   procedure Decompress ( Input: in String ) is
      
      -- get number of repetitions
      function Get_Number ( Input: in String ) return Positive is
	 L: Positive;
	 Number: Positive;
      begin
	 Get ( Input, Number, L );
	 return Number;
      end Get_Number;
      
      -- put compressed chars
      procedure Put_Chars ( repeats: in Positive; Char: in Character ) is
      begin
	 for N in 1 .. Repeats loop
	    Put ( Char );
	 end loop;
      end Put_Chars;
      
      Pos: Positive range 1 .. Input'Last := 1;
   begin      
      loop
	 if Input ( Pos ) = '@' then
	    Pos := Pos + 1;
	    Put_Chars ( Get_Number ( Input ( Pos .. Pos ) ), Input ( Pos + 1 ) );	    
	    Pos := Pos + 1;
	 else
	    Put ( Input ( Pos ) );
	 end if;
	 -- Pos range check
	 if Pos = Input'Last then
	    exit;
	 else
	    Pos := Pos + 1;
	 end if;	 
      end loop;
      
   end Decompress;
   
begin
   Get ( Text );
   New_Line;
   Compress ( Text );
   New_Line;
   Flush;
   Get ( Text2 );
   New_Line;
   Decompress ( Text2 );
   New_Line;
end Stupid_Compress;
