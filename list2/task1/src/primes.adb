package body Primes with SPARK_Mode is
  
  function IsPrime (N : in Positive) return Boolean is
  begin
    for I in Positive range 2 .. N - 1 loop
      if N rem I = 0 then
        return False;
      end if;
      pragma Loop_Invariant (for all J in 2 .. I  => N rem J /= 0);
    end loop;
    return True;
  end IsPrime;

end Primes;
