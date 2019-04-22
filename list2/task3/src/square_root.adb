package body Square_Root with SPARK_Mode is

  function Sqrt (X: Float; Tolerance: Float) return Float is
    A: Float := X / 2.0;
  begin
    if X /= 0.0 then
      while abs(X/A - A) > Tolerance loop
        A := (X/A + A) / 2.0;
        pragma Loop_Invariant (A > 0.0);
      end loop;
    
      return A;
    else
      return 0.0;
    end if;
      
  end Sqrt;
  

end Square_Root;
