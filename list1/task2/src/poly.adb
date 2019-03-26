package body Poly with SPARK_Mode is
   function Horner (X: Integer; A: Vector) return Integer is
    Acc: Integer := 0;
    Aux: Integer := 0 with Ghost;

  begin
      for Index in reverse A'First .. A'Last loop
        Acc := A (Index) + (Acc * X);
        Aux := Aux + A (Index) * (X ** (Index - A'First));

        pragma Loop_Invariant (Aux = ((X**(Index - A'First)) * Acc));
      end loop;

    pragma Assert(Aux = Acc);
    return Acc;
   end Horner;
end Poly;
