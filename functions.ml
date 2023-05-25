
(** To define a function we use
    let <name> <args> = <expr> *)
let sum a b = a + b


(** Defining plustwo as the
    partial application of [sum 2] *)
let plustwo = sum 2



let myresult = sum 40 2

let otherresult = plustwo 41


(** If a function calls itself
    we need to say that it's a
    [rec]ursive function *)
let rec fact n =
  if n = 0 then
    1
  else
    n * fact (n - 1)





let inc x = x + 1

(** Here is an example of how to
    create an anonymous function.
    We use the keyword [fun] followed
    by the [arguments] [->] and the [body] *)
let inc = fun x -> x + 1



(** To pipeline a value to a function
    we use the [ |> ] operator *)
let a_result =
  0
  |> plustwo
  |> sum 3


let () =
  print_int myresult;
  print_newline ()

let () =
  print_int otherresult;
  print_newline ()
