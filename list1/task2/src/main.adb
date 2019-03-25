with Poly; use Poly;
with Ada.Text_IO;
procedure Main is
  Arr: Vector (0 .. 1) := (7, 4);
  X: Integer;
begin
   X := 2;
   Ada.Text_IO.Put_Line ("Value of poly: " & Horner(X, Arr)'Image);
end Main;
