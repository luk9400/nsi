package body Poly with SPARK_Mode is
   function Horner (X: Integer; A: Vector) return Integer is
   Acc: Integer;
   begin
      Acc := A (A'Last);
      -- works for indexes in form (1 .. n)
      for Index in Integer range A'First .. A'Last - 1 loop
         Acc := A (A'Last - Index) + (Acc * X);
      end loop;
      return Acc;
   end Horner;
end Poly;
