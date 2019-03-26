package body Selection with SPARK_Mode is

  procedure Sort (A: in out Arr) is
    Tmp: Integer;
    I: Integer;
    J: Integer;
  begin
    I := A'First;
    if A'Length > 1 then
      while I <= A'Last - 1 loop
        pragma Loop_Invariant (for all K in A'First + 1 .. I => A (K - 1) <= A (K));
        pragma Assume (I >= A'First);
        J := I + 1;
        while J <= A'Last loop
          pragma Loop_Invariant (for all J in I + 1 .. A'Last => J >= I and J <= A'Last);
          pragma Loop_Invariant (for all K in I .. J => A (I) <= A (K));
          pragma Assume (J > A'First);
          if A (J) < A(I) then
            Tmp := A (I);
            A (I) := A (J);
            A (J) := Tmp;
          end if;
          J := J + 1;
        end loop;
        I := I + 1;
      end loop;
    end if;

  end Sort;

end Selection;

