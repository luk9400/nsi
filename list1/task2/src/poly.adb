package body Poly with SPARK_Mode is
   function Horner (X: Integer; A: Vector) return Integer is
    Acc: Integer := 0;
   begin
    if A'Length > 0 then
      Acc := A (A'Last);

      for Index in Integer range A'First .. A'Last - 1 loop
        Acc := A (A'Last - Index) + (Acc * X);
      end loop;

      if X = 0 then
        Acc := A (A'First);
      end if;
    end if;


    return Acc;
   end Horner;
end Poly;
