structure IntNum :> NUM where type t = int =
  struct
    type t = int
    val add = Int.+
    val subtract = Int.-
    val multiply = Int.*
    val zero = 0
  end
