with Selection;
with Ada.Text_IO;
procedure Main is
  Arr: Selection.Arr (0 .. 3) := (5, 8, 6, 2);

begin

  for I in Arr'Range loop
    Ada.Text_IO.Put_Line(Arr (I)'Image);
  end loop;

  Selection.Sort(Arr);
  Ada.Text_IO.Put_Line("Sorted:");

  for I in Arr'Range loop
    Ada.Text_IO.Put_Line(Arr (I)'Image);
  end loop;

end Main;

