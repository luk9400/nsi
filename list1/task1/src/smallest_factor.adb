package body Smallest_Factor
with SPARK_Mode
is
  procedure SmallestF (N : in out Positive; Factor : out Positive)
  is
  begin
    for I in Integer range 2 .. N loop
      if N rem I = 0 then
        Factor := I;
        N := N / Factor;
        exit;
      end if;
    end loop;

    Factor := 1;

  end SmallestF;

end Smallest_Factor;
