with Selection;
with Ada.Text_IO;
procedure Main is
  Arr: Selection.Arr (1 .. 6) := (7, 5 ,3, 1, 4, 8);
  Arr1: Selection.Arr (1 .. 1);

begin

  Arr1(Arr1'First) := 7;

  for I in Arr'Range loop
    Ada.Text_IO.Put_Line(Arr (I)'Image);
  end loop;

  Selection.Sort(Arr);
  Ada.Text_IO.Put_Line("Sorted:");

  for I in Arr'Range loop
    Ada.Text_IO.Put_Line(Arr (I)'Image);
  end loop;

end Main;

