
(** To define a function we use
    let <name> <args> = <body>*)
let sum a b = a + b


(** Defining plustwo as the
    partial application of [sun 2] *)
let plustwo = sum 2



let myresult = sum 40 2

let otherresult = plustwo 41



let () =
    print_int myresult;
    print_newline ()

let () =
    print_int otherresult;
    print_newline ()
