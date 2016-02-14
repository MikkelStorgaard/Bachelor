(* Int => [Int] *)
fun range 0 n = if n <= 0 then (Fail "n must be bigger than 0"; [])
                   else List.tabulate(n+1, (fn x => x))

|   range n m = if (n > m)
                   then (Fail "m must be bigger than m"; [])
                   else let
                          val offset = n
                          val length = Int.abs(n - m)
                        in
                          List.tabulate(length+1, (fn x => offset + x))
                        end

val prob1 = let
              val integers = range 1 (1000 - 1)
              val filtered_integers = List.filter
                                      (fn number => ((number mod 5) = 0) orelse (number mod 3) = 0) integers
            in
              List.foldr(fn (x, y) => x + y) 0 filtered_integers
            end
