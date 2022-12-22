(* Pokemon's type *)
type ptype = TNormal | TFire | TWater

(* Pokemon's effectiveness *)
type peff = ENormal | ENotVery | ESuper

(* Multiplier of effectiveness *)
let mult_of_eff = function
  | ENormal -> 1.0
  | ENotVery -> 0.5
  | ESuper -> 2.0

(* Pokemon's effectiveness *)
let eff = function
  | (TFire, TFire) -> ENotVery
  | (TWater, TWater) -> ENotVery
  | (TFire, TWater) -> ENotVery
  | (TWater, TFire) -> ESuper
  | _ -> ENormal

(* Shorthand Pokemon's effectiveness *)
let eff = function
  | (TFire, TFire) | (TWater, TWater) | (TFire, TWater)
    -> ENotVery
  | (TWater, TFire) -> ESuper
  | _ -> ENormal

  (* Pokemon's effectiveness that support function application *)
let eff t1 t2 = match t1, t2 with
| TFire, TFire | TWater, TWater | TFire, TWater
  -> ENotVery
| TWater, TFire -> ESuper
| _ -> ENormal

type mon = {
  name : string;
  hp : int;
  ptype : ptype;
}

let charmander = {
  name = "Charmander";
  hp = 39;
  ptype = TFire;
}