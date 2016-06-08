-- Testing whether it is possible to use a function
-- from a structure in a curry function (map)
-- ==
-- input {
--   [1, 2, 3 ,4, 5, 6, 7, 8, 9, 10] 
-- }
--  output {
--  55
-- }

structure f = struct
    fun int plus(int a, int b) = a+b
  end

fun int main([int] a) = reduce(f.plus , 0 , a)
