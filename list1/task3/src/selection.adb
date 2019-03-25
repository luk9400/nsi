package body Selection with SPARK_Mode is

  procedure Sort (A: in out Arr) is
    Min: Integer;
    Tmp: Integer;
  begin

    if A'Length = 2 and then A (A'First) > A (A'Last) then
      Tmp := A (A'First);
      A (A'First) := A (A'Last);
      A (A'Last) := Tmp;
    elsif A'Length > 2 then
      for I in Integer range A'First .. A'Last - 1 loop
        Min := I;
        --pragma Loop_Invariant (for all I in A'First .. A'Last => Min >= A'First and Min <= A'Last);
        pragma Loop_Invariant (for all K in A'First + 1 .. I => A (K - 1) <= A (K));
        --pragma Loop_Invariant ((for all K in I .. A'Last and for all M in A'First .. I - 1) => A (K) >= A (M));
        for J in Integer range I + 1 .. A'Last loop
          --pragma Loop_Invariant (for all J in I + 1 .. A'Last => Min >= I - 1 and then Min >= A'First and then Min <= A'Last);
          pragma Loop_Invariant (for all M in I .. J - 1 => A (M) >= A (Min));
          if A (J) < A (Min) then
          -- Min := J;
          Tmp := A (I);
          A (I) := A (Min);
          A (Min) := Tmp;
          end if;
        end loop;

--          if Min /= I then
--            Tmp := A (I);
--            A (I) := A (Min);
--            A (Min) := Tmp;
--          end if;

      end loop;
    end if;

  end Sort;

end Selection;

