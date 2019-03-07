with Smallest_Factor; use Smallest_Factor;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Main is

  N : Integer := 15;
  Factor : Integer;
begin

  SmallestF (N, Factor);
  Put_Line ("N: ");
  Put (Item => N, Width => 1);
  Put_Line ("Factor: ");
  Put (Item => Factor, Width => 1);

end Main;
