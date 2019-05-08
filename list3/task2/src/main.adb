with Ada.Text_IO;
with Rev;
procedure Main is
  S: String := "programowanie";
begin
  Rev.Reve(S);
  Ada.Text_IO.Put_Line(S);
end Main;
