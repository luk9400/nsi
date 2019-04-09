with Ada.Text_IO;
with Primes;
procedure Main is

N : Positive := 16;
begin

  Ada.Text_IO.Put_Line (Primes.IsPrime (N)'Image);

end Main;
