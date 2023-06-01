
type weekday =
  | Sun
  | Mon
  | Tue
  | Wed
  | Thu
  | Fri
  | Sat

let int_of_weekday = function
  | Sun -> 1
  | Mon -> 2
  | Tue -> 3
  | Wed -> 4
  | Thu -> 5
  | Fri -> 6
  | Sat -> 7

let string_of_weekday = function
  | Sun -> "Sunday"
  | Mon -> "Monday"
  | Tue -> "Tuesday"
  | Wed -> "Wednesday"
  | Thu -> "Thursday"
  | Fri -> "Friday"
  | Sat -> "Saturday"

let next_day = function
  | Sun -> Mon
  | Mon -> Tue
  | Tue -> Wed
  | Wed -> Thu
  | Thu -> Fri
  | Fri -> Sat
  | Sat -> Sun

let next_working_day = function
  | Fri -> Mon
  | Sat -> Mon
  | x -> next_day x
