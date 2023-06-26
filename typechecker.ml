
module Context = Map.Make (String)

type a_type =
  | TVar of string
  | TArrow of a_type * a_type (* t -> t' *)
let rec string_of_type = function
  | TVar s -> s
  | TArrow (t, t') -> String.concat "" [string_of_type t; " -> "; string_of_type t';]

type expression =
  | Variable of string
  | Application of expression * expression
  | Lambda of string * a_type * expression

let lookup x ctx = Context.find x ctx

let add_to_ctx x t ctx = Context.add x t ctx

let rec infer ctx expression =
  match expression with
  | Variable (name) -> lookup name ctx
  | Application (fn, a) ->
    let a_type =
      match infer ctx fn with
      | TArrow (t, t') ->
        let t1 = infer ctx a in
        if t1 = t then t' else failwith "type mismatch"
      | _ -> failwith "not a function"
    in
    a_type
  | Lambda (x, t, body) ->
    let new_ctx = add_to_ctx x t ctx in
    let t' = infer new_ctx body in
    TArrow (t, t')

let main () =
  let ctx = Context.empty in
  let ctx = add_to_ctx "y" (TVar "String") ctx in
  let expr = Lambda ("x", TVar "Int", Variable "y") in
  print_endline @@ string_of_type (infer ctx expr)
