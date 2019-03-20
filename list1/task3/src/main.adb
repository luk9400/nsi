with Selection;
with Ada.Text_IO;
procedure Main is
  Arr: Selection.Arr (-2 .. 0 ) := (-1 => -1, -2 => 0, others => -2);

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

