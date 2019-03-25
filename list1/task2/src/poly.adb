with Ada.Text_IO;
package body Poly with SPARK_Mode is
   function Horner (X: Integer; A: Vector) return Integer is
    Acc: Integer := 0;
    Aux: Integer with Ghost;
    Pow: Integer with Ghost;
  begin
    Aux := 0;
    if A'Length > 0 then
      Pow := A'Length - 1;
      for Index in reverse A'First .. A'Last loop
        Acc := A (Index) + (Acc * X);
        -- Pow bedzie ujemne dopiero na koncu ostatniej iteracji, wiec X ** -1 nigdy sie nie wykona
        Aux := Aux + A (Index) * (X ** Pow);
        Pow := Pow - 1;
      end loop;

      if X = 0 then
        Acc := A (A'First);
        Aux := A (A'First);
      end if;
    end if;

    pragma Assert(Aux = Acc);
    return Acc;
   end Horner;
end Poly;
