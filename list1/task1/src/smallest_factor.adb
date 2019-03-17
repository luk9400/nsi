package body Smallest_Factor with SPARK_Mode is
  procedure SmallestF (N : in out Positive; Factor : out Positive) is
  begin
    Factor := 1;
    for I in Positive range 2 .. N loop
      pragma Loop_Invariant (for all J in 2 .. I - 1 => N rem J /= 0);

      Factor := I;

      if N rem I = 0 then
        exit;
      end if;
    end loop;

    N := N / Factor;

  end SmallestF;
end Smallest_Factor;

