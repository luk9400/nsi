package body Square_Root with SPARK_Mode is

  function Sqrt (X: Float; Tolerance: Float) return Float is
    A: Float := X;
  begin
      while abs(X - A ** 2) > X * Tolerance loop
        A := (X/A + A) / 2.0;
        
        pragma Loop_Invariant ((if X < 1.0 then (A >= X and A < 1.0)));
        pragma Loop_Invariant ((if X > 1.0 then (A >= 1.0 and A < X)));
      end loop;
    
      return A;
    
  end Sqrt;
  
end Square_Root;
