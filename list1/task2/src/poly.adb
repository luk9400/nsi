package body Poly with SPARK_Mode is
   function Horner (X: Integer; A: Vector) return Integer is
    Acc: Integer;
   begin
     Acc := A (A'Last);

     for Index in Integer range A'First .. A'Last - 1 loop
       if X /= 0 and then Acc < Integer'Last / X and then Acc > Integer'Last / X then
         Acc := A (A'Last - Index) + (Acc * X);
       end if;
     end loop;

     if X = 0 then
       Acc := A (A'First);
     end if;

     return Acc;
   end Horner;
end Poly;
