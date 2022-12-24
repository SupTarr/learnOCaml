(* Recursive Variants *)
type intlist =
  | Nil
  | Cons of int * intlist

(* Cons (1, Cons (2, Nil)) *)

let rec length_intlist = function
  | Nil -> 0
  | Cons (_, t) -> 1 + lenght_intlist t

(* lenght_intlist (Cons (1, Cons (2, Nil))) *)

(* Parameterized Variants *)
type 'a mylist =
  | Nil
  | Cons of 'a * 'a mylist

let rec length = function
  | Nil -> 0
  | Cons (_, t) -> 1 + length t

type 'a mylist =
  | []
  | (::) of 'a * 'a mylist

let rec length = function
  | [] -> 0
  | _ :: t -> 1 + length t