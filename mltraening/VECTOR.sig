signature VECTOR = sig
    datatype vector_direction = Row | Column
    type t
    type vector = t list * vector_direction

    val create_vector : (t list * vector_direction) -> vector
    val empty : vector_direction -> vector
    val append_num : t -> vector -> vector
    val prepend_num : t -> vector -> vector
    val concat_vectors : vector -> vector -> vector

    val add_vectors :  vector -> vector -> vector
    val subtract_vectors :  vector -> vector -> vector
    val dot_product :  vector -> vector -> t

    val do_elementwise : (t -> t) ->  vector ->  vector

    val length : vector -> int
  end

