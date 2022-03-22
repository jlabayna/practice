(* Enter your code here. Read input from STDIN. Print output to STDOUT *)

let rec read_input () =
    try
        let i = read_int () in
        i :: read_input ()
    with
        End_of_file -> []

(* Recommended Method Signature:
Number Of Parameters: 1
Parameters: [list]
Returns: Number
*)

let rec count ls =
    match ls with
    | hd::tl -> 1 + count tl
    | [] -> 0

let () = print_int (count (read_input ()))
