let _ = print_endline "Hello world!"
let id x = x;;

print_int (id 2);;
print_endline "";;

let value = ( = ) 1 2;;
let percent = (36.0 /. 203.0) *. 100.;;
print_float percent;;
print_endline "";;

type student = {
  name: string;
  year: int;
};;

let rgb : student = {
  name = "Ruth Bader";
  year = 1954
}

let name_with_year s =
  match s with
  | {name; year} -> name ^ " '" ^ (year mod 100 |> string_of_int);;

rgb |> name_with_year |> print_string;;

type color = | Red | Green | Blue;;

type point = float * float
type shape =
  | Circle of {center : point; radius : float}
  | Rectangle of {lower_left : point; upper_right : point}
  | Point of point

let e1 = Circle {center = (0., 0.); radius = 1.}
let r1 = Rectangle {lower_left = (-1., -1.); upper_right = (1., 1.)}
let p1 = Point (0., 0.)

let avg a b = (a +. b) /. 2.

(* let center s =
  match s with
  | Circle {center; radius} -> center
  | Rectangle {lower_left; upper_right} ->
    let (x_ll, y_ll) = lower_left in
    let (x_ur, y_ur) = upper_right in
    (avg x_ll x_ur, avg y_ll y_ur)
  | Point p -> p *)

let center s =
  match s with
  | Circle {center; radius} -> center
  | Rectangle {lower_left = (x_ll, y_ll); upper_right = (x_ur, y_ur)} ->
    (avg x_ll x_ur, avg y_ll y_ur)
  | Point p -> p