package body Max2 with SPARK_Mode is

  function FindMax2 (V : Vector) return Integer is
    Max : Positive := V (V'First);
    Max2 : Natural := 0;
  begin
    for I in Integer range V'Range loop
      if V(I) > Max then
        Max := V(I);
      end if;
      pragma Loop_Invariant (for all J in V'First .. I => Max >= V(J));
    end loop;
    
    for I in Integer range V'Range loop
      if V(I) /= Max and then V(I) > Max2 then
        Max2 := V(I);
      end if;
      pragma Loop_Invariant (for all J in V'Range => V(J) <= Max); 
      pragma Loop_Invariant (if Max2 = 0 then (for all J in V'First .. I => V(J) = Max));
      pragma Loop_Invariant (if Max2 /= 0 then (for some J in V'First .. I => V(J) = Max2));
    end loop;
    
    return Max2;
    
  end FindMax2;
  

end Max2;
