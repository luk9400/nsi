with Smallest_Factor; use Smallest_Factor;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
  N : Integer := 15;
  Factor : Integer;
begin

  SmallestF (N, Factor);
  Put_Line ("N: " & N'Image);
  Put_Line ("Factor: " & Factor'Image);

end Main;

