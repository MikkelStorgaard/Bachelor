signature NUM = sig
    type t
    val add : t * t -> t
    val subtract : t * t -> t
    val multiply : t * t -> t
    val zero : t
  end
