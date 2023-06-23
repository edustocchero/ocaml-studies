
type 'a stack =
  | Empty
  | Ctor of 'a * 'a stack

let empty = Empty

let rec size = function
  | Empty -> 0
  | Ctor (_, next) -> 1 + size next

let is_empty = function 
  | Empty -> true
  | _ -> false

let push s item = Ctor (item, s)

let pop = function
  | Empty -> Empty
  | Ctor (_, tail) -> tail
