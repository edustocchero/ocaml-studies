
let structural_eq = ( = )

(** [==] is the equality of the memory address *)
let physical_eq = ( == )

let debug_int_eq (a : int) (b : int) =
  let structural_res = structural_eq a b in
  let physical_res = physical_eq a b in
  Printf.printf "is %i = %i? -> %b\n%!" a b structural_res;
  Printf.printf "is %i == %i? -> %b\n%!" a b physical_res

let debug_string_eq (a : string) (b : string) =
  let structural_res = structural_eq a b in
  let physical_res = physical_eq a b in
  Printf.printf "is %s = %s? -> %b\n%!" a b structural_res;
  Printf.printf "is %s == %s? -> %b\n%!" a b physical_res

let () = debug_int_eq 42 42

let () = debug_string_eq "hi" "hi"
