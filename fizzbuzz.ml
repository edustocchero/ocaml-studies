
let fizzbuzz i =
  let aux = function
    | (_, 0, 0) -> "FizzBuzz"
    | (_, 0, _) -> "Fizz"
    | (_, _, 0) -> "Buzz"
    | (i, _, _) -> string_of_int i
  in
  aux (i, i mod 3, i mod 5)

let rec_fizzbuzz i =
  let rec aux acc i =
    if i <= 0 then
      acc
    else
      aux ([fizzbuzz i]@acc) (i - 1) 
  in
  aux [] i
