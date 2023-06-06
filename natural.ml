
type natural =
  | Zero
  | Succ of natural

let rec int_of_nat = function
  | Zero -> 0
  | Succ s -> 1 + int_of_nat s

let rec plus x y =
  match x, y with
  | x, Zero -> x
  | x, Succ s -> Succ (plus x s)

let ( +! ) = plus

(**

plus (Succ Zero) (Succ (Succ Zero))    matches x, Succ s

Succ (plus (Succ Zero) (Succ Zero))    matches x, Succ s

Succ (Succ (plus (Succ Zero) (Zero)))  matches x, Zero

Succ (Succ (Succ Zero))                return

*)

