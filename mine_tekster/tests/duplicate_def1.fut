-- The structure opens a new environment, which lets us use names again, which were used
-- in a previous scope.
-- ==
-- input { }
-- output { (1 , 2.0) }

type foo = int
structure foo =
  struct
    fun int foo() = 1
    structure foo =
      struct
        type foo = float
        fun foo foo() = 2.0
      end
  end

fun (foo, foo.foo.foo) main() = ( foo.foo() , foo.foo.foo())