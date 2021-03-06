functor Vector_fn (N:NUM) : VECTOR where type t = N.t =
  struct
    open N
    type t = N.t
    datatype vector_direction = Row | Column
    type vector = (t list * vector_direction)

    val length = fn (v, _) => List.length(v)
    exception DimensionMismatch
    exception ShapeMismatch

    fun transpose (l1, Row) = (l1, Column)
      | transpose (l1, Column) = (l1, Row)
    fun create_vector(xs, is_row_vector) = (xs , is_row_vector)
    fun empty dir = ([] , dir)
    fun append_num num (v, tr) = (v @ [num] , tr)
    fun prepend_num num (v, tr) = (num::v , tr)
    fun concat_vectors (v1 , b1) (v2 , b2) = if (b1 = b2)
                                               then (v1 @ v2 , b1)
                                               else raise ShapeMismatch

    fun add_vectors (v1 as  (l1, dir1)) (v2 as (l2, dir2)) = let
                                        fun listAdd [] [] = []
                                          | listAdd (x::xs) (y::ys) = add(x,y) :: (listAdd xs ys)
                                      in
                                        if (dir1 <> dir2) then raise ShapeMismatch else
                                        if (length v1 <> length v2) then raise DimensionMismatch
                                          else ((listAdd l1 l2) , dir1)
                                      end

    fun subtract_vectors (v1 as  (l1, dir1)) (v2 as (l2, dir2)) = let
                                        fun listSub [] [] = []
                                          | listSub (x::xs) (y::ys) = subtract(x,y) :: (listSub xs ys)
                                      in
                                        if (dir1 <> dir2) then raise ShapeMismatch else
                                        if (length v1 <> length v2) then raise DimensionMismatch
                                          else ((listSub l1 l2) , dir1)
                                      end

    fun dot_product (v1 as (l1,b1)) (v2 as (l2,b2)) =
      if (length v1 <> length v2) then raise DimensionMismatch
        else let
               fun listMult [] [] = []
                 | listMult (x::xs) (y::ys) = multiply(x,y) :: (listMult xs ys)
               val templist = listMult l1 l2
             in
               foldr (fn(z, x) => add(z, x)) zero  templist
             end

    fun do_elementwise f (v, b) = (map f v , b)
  end

structure IntVector = Vector_fn(IntNum)
val empty_vec = IntVector.empty IntVector.Row
(* val ten_ones_vector = let
                        val ten_ones = List.tabulate (10, fn _ => 1)
                      in
                        IntVector.create_vector(ten_ones, Row)
                      end
                      *)
