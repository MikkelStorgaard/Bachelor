structure RealNum :> NUM where type t = real =
  struct
    type t = real
    val add = Real.+
    val subtract = Real.-
    val multiply = Real.*
    val zero = 0.0
  end
