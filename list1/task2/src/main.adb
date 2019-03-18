with Poly; use Poly;
with Ada.Text_IO;
procedure Main is
  Arr: Vector (1 .. 4) := (7, 4, 2, 5);
  X: Integer;
begin

   X := 0;
   Ada.Text_IO.Put_Line ("Value of poly: " & Horner(X, Arr)'Image);

end Main;
