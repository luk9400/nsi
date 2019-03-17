package body Selection with SPARK_Mode is
  function Sorted (A: Arr) return Boolean is
  begin
    for I in Integer range A'First .. A'Last - 1 loop
      if A (I) >= A(I + 1) then
        return False;
      end if;
    end loop;

    return True;
  end Sorted;

  procedure Sort (A: in out Arr) is
    Min: Integer;
    Tmp: Integer;
  begin
    for I in Integer range A'First .. A'Last - 1 loop
      Min := I;
      for J in Integer range I + 1 .. A'Length loop
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
  end Sort;

end Selection;

