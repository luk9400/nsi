package body Linear_Search
with SPARK_Mode
is
  function Search (A : Ar; I : Integer) return T is
  begin
    for Index in T range Ar'First .. Ar'Last loop
      if A (Index) = I then
        return Index;
      else
        null;
      end if;
    end loop;

    return 0;

  end Search;

end Linear_Search;
