-- This test fails with a DuplicateDefinition error.
-- ==
-- error: .*Dup.*

fun int bar() = 1
structure foo =
  struct
    fun foo foo() = 1
  end
fun int bar() = 2

fun int main() = 0
