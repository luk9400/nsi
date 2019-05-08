package body Rev with SPARK_Mode is

  procedure Reve (S : in out String) is
    Tmp: String := S;
  begin
    for I in S'Range loop
      S(I) := Tmp(S'First + S'Last - I);
      
      pragma Loop_Invariant (for all J in S'First .. I => S(J) = Tmp(S'First + S'Last - J));
    end loop;
    
  end Reve;
  
end Rev;
