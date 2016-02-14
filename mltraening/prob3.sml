val listen = List.tabulate

fun primeSeive (x::xs) [] = (x::xs)
  | primeSeive (x::xs) (y::[]) = (y::x::xs)
  | primeSeive (x::xs) (y::ys) = let
                                   val rem_nums = List.filter (fn xx => xx mod y <> 0) ys
                                  in
                                   primeSeive (y::x::xs) rem_nums
                                 end

fun primeBoot (n : IntInf.int) = let
                    val zero::one::rest = List.tabulate(n div 2, (fn x => x))
                   in
                    primeSeive [1] rest
                  end
