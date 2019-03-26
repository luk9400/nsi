package body Selection with SPARK_Mode is

  procedure Sort (A: in out Arr) is
    Tmp: Integer;
    Min: Integer;
  begin
      for I in Integer range A'First .. A'Last loop
        Min := I;
        for J in Integer range I + 1 .. A'Last loop
          pragma Loop_Invariant (for all K in I .. J - 1 => A (Min) <= A (K));
          pragma Loop_Invariant (Min in I .. A'Last);

          if A (J) < A(Min) then
            Min := J;
          end if;
        end loop;

        Tmp := A (I);
        A (I) := A (Min);
        A (Min) := Tmp;

        pragma Loop_Invariant (for all K in A'First .. I => (for all M in K + 1 .. A'Last => A (K) <= A (M)));
      end loop;

  end Sort;

end Selection;

