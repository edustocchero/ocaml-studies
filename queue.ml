
type 'a queue =
  | Empty
  | Ctor of 'a * 'a queue

let rec size = function
  | Empty -> 0
  | Ctor (_head, tail) -> 1 + size tail

let is_empty = function
  | Empty -> true
  | _ -> false

let rec push q item =
  match q with
  | Empty -> Ctor (item, Empty)
  | Ctor (head, tail) -> Ctor (head, push tail item)

let pop = function
  | Empty -> Empty
  | Ctor (_, tail) -> tail
