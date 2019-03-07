package Smallest_Factor
with SPARK_Mode
is
  procedure SmallestF (N : in out Positive; Factor : out Positive)
    with
      SPARK_Mode,
      Pre => N > 1,
      Post => (N'Old / Factor = N) and
      (N'Old rem Factor = 0) and
    (for all J in 2 .. Factor - 1 => N'Old rem J /= 0);

end Smallest_Factor;
