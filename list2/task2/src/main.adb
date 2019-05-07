with Ada.Text_IO;
with Max2;

procedure Main is

  V : Max2.Vector := (4, 4, 4, 4);
begin

  Ada.Text_IO.Put_Line(Max2.FindMax2 (V)'Image);

end Main;
