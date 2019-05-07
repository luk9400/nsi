package body Max2 with SPARK_Mode is

  function FindMax2 (V : Vector) return Integer is
    Max : Positive := V (V'First);
    Max2 : Natural := 0;
  begin
    for I in Integer range V'Range loop
      if V(I) > Max then
        Max2 := Max;
        Max := V(I);
      elsif V(I) > Max2 and V(I) < Max then
        Max2 := V(I);
      end if;
      
      pragma Loop_Invariant (for all J in V'First .. I => Max >= V(J));
      pragma Loop_Invariant (for some J in V'First .. I => Max = V(J));
      pragma Loop_Invariant (((for some J in V'First .. I => V(J) = Max2) and
                              (for all J in V'First .. I => (if V(J) > Max2 then (for all K in V'First .. I => V(K) <= V(J)))))
                             or
                              (Max2 = 0 and (for all J in V'First .. I => V(J) = Max)));
    end loop;
    
    return Max2;
    
  end FindMax2;
  
end Max2;
