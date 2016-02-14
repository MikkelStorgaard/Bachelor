fun fib (x0::x1::xs) n = let
                     val new_number = x0 + x1
                     val the_list = (x0::x1::xs)
                    in
                     if new_number > n then (x0::x1::xs)
                     else fib (new_number::the_list) n
                   end

val fibBoot = fib [2,1]

val sum_of_equal_fibs_under_n = List.foldr (fn (x,y) => x + y) 0 o
                                List.filter (fn x => x mod 2 = 0) o
                                fibBoot
