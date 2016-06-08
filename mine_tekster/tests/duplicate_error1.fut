-- This test fails with a DuplicateDefinition error.
-- ==
-- error: .*Dup.*

type foo = int

structure foo =
  struct
    fun foo foo() = 1
  end
type foo = float

fun int main() = 0
