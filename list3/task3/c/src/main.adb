with Ada.Text_IO;
with Bubble;
procedure Main is
  A : Bubble.Arr := (2, 1, 3, 7);
begin
  Bubble.Sort(A);

  for I in A'Range loop
    Ada.Text_IO.Put_Line(A(I)'Image);
  end loop;

end Main;
