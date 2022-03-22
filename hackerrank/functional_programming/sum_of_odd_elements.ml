(* Enter your code here. Read input from STDIN. Print output to STDOUT *)

let rec read_in () =
    try let i = read_int () in i :: read_in ()
    with End_of_file -> []

(* "Required" Method Signature:
Number Of Parameters: 1
Parameters: [list]
Returns: Number
*)
let rec odd_sum ls =
    List.fold_left (fun acc x -> if x mod 2 != 0 then acc + x el`se acc) 0 ls

let () =
    print_int (odd_sum (read_in ()))
