package body Bubble with SPARK_Mode is
  
  procedure Sort (A : in out Arr) is
    Tmp : Integer;
  begin
    Outer: for I in reverse A'First .. A'Last - 1 loop
      Inner: for J in A'First .. I loop
        if A(J) > A(J + 1) then
          Tmp := A(J);
          A(J) := A(J + 1);
          A(J + 1) := Tmp;
        end if;
        
        pragma Loop_Invariant (for all K1 in A'Range => (for some K2 in A'Range => A(K2) = A'Loop_Entry(Inner)(K1)));
        
      end loop Inner;
      
      pragma Loop_Invariant (for all K1 in A'Range => (for some K2 in A'Range => A(K2) = A'Loop_Entry(Outer)(K1)));
      
    end loop Outer;
  end Sort;  

end Bubble;
