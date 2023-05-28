
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




(** Here we have a polimorphic function.
    [val id : 'a -> 'a]. ['a] is a type
    variable for an unknown type *)
let id x = x


(** Here we specified that the type ['a]
    is an [int]. Then we need to change
    all occurences of ['a] to [int] *)
let id_int' : int -> int = id




(** Function with labeled arguments *)
let foo ~name1:a ~name2:b = a + b

(** Calling a function with labeled
    arguments *)
let _ =
  foo ~name1:1 ~name2:2

(** Also works *)
let foo ~name1 ~name2 = name1 + name2

(** We also can type annotate *)
let foo ~name1:(a : int) ~name2:(b : int) = a + b

(** Optional arguments have [?]
    before the name *)
let foo ?name:(a = 0) b = a + b



(** The addition operator has type
    [int -> int -> int]. Putting it
    inside the parentheses we can
    prefix the operator *)
let add_five = ( + ) 5


(** We can define new infix operators *)
let ( ^^ ) a b = max a b

let _ = 2 ^^ 3





(** Example of tail call recursive
    function *)
let r_fact n =
  let rec aux u acc =
    if u = 0 then
      acc
    else
      aux (u - 1) (u * acc)
  in
  aux n 1





let () =
  print_int myresult;
  print_newline ()

let () =
  print_int otherresult;
  print_newline ()
