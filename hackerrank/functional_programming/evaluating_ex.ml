(* Enter your code here. Read input from STDIN. Print output to STDOUT *)

(* 11, 'cause I want to reduce the number of additions *)
let rec ex_h x term prev_xn =
    if term <> 11.
    then prev_xn +. ex_h x (term +. 1.) ((x *. prev_xn) /. term)
    else 0. 

(** Calculate e^x using 10 expansion terms *)
let ex x =
    1. +. ex_h x 2. x

let () =
    for i = 1 to read_int () do
        Printf.printf "%.4f\n" (ex (read_float ()))
    done
