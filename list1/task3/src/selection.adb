package body Selection with SPARK_Mode is

  procedure Sort (A: in out Arr) is
    Min: Integer;
    Tmp: Integer;
  begin
    for I in Integer range A'First .. A'Last - 1 loop
      Min := I;

      for J in Integer range I + 1 .. A'Last - 1 loop
        pragma Loop_Invariant (for all J in I + 1 .. A'Last - 1 => Min >= I - 1 and then Min >= A'First and then Min < A'Last);
        if A (J) < A (Min) then
          Min := J;
        end if;
      end loop;

      if Min /= I then
        Tmp := A (I);
        A (I) := A (Min);
        A (Min) := Tmp;
      end if;

    end loop;

    --pragma Assert (Sorted (A));
  end Sort;

end Selection;

