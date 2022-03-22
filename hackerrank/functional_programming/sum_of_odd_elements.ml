(* Enter your code here. Read input from STDIN. Print output to STDOUT *)

(* "Required" Method Signature:
Number Of Parameters: 1
Parameters: [list]
Returns: Number
*)
let rec odd_sum ls =
    match ls with
    | hd::tl -> if hd mod 2 = 1 then hd + odd_sum tl else odd_sum tl
    | [] -> 0

let rec read_in () =
    try let i = read_int () in i :: read_in ()
    with End_of_file -> []

let () =
    print_int (odd_sum (read_in ()))
