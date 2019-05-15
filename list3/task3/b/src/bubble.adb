package body Bubble with SPARK_Mode is
  
  procedure Sort (A : in out Arr) is
    Tmp : Integer;
  begin
    for I in reverse A'First .. A'Last - 1 loop
      for J in A'First .. I loop
        if A(J) > A(J + 1) then
          Tmp := A(J);
          A(J) := A(J + 1);
          A(J + 1) := Tmp;
        end if;
        
      end loop;
      
    end loop;
  end Sort;  

end Bubble;
