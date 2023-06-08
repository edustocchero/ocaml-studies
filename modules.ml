
module Boolean = struct
  type t = True | False

  let string_of_boolean = function
    | True -> "True"
    | False -> "False"

  let ( *&& ) x y =
    match x, y with
    | True, True -> True
    | _, _ -> False
  
  let ( *|| ) x y =
    match x, y with
    | True, _ -> True
    | False, b -> b
end

let _ = Boolean.( *&& ) Boolean.True Boolean.False

open Boolean

let _ = False *|| False
