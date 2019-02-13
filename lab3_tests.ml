open Lab3;;
open CS51;;
(* unit_test condition msg -- Tests condition and prints an indicative
   message msg related to the condition along with a passed or failed
   string *)

(* let unit_test (condition : bool) (msg : string) : unit =
  if condition then
    Printf.printf "%s passed\n" msg
  else
    Printf.printf "%s FAILED\n" msg ;; *)

(*Part I Unit Tests*)
let test_add_point_pair () = 
	unit_test(add_point_pair ((1, 3):point_pair) ((2, 5):point_pair) = ((3, 8): point_pair)) "point_pair positive";;

let test_add_point_recd () =
	unit_test(add_point_recd ({x=1;y=3}:point_recd) ({x=2;y=5}:point_recd) = ({x=3;y=8}: point_recd)) "point_recd positive";;

let test_dot_product_pair () = 
	unit_test(dot_product_pair ((1, 3):point_pair) ((2, 5):point_pair) = (17: int)) "dot_product_pair positive";;

let test_dot_product_recd () =
	unit_test(dot_product_recd ({x=1;y=3}:point_recd) ({x=2;y=5}:point_recd) = (17: int)) "dot_product_recd positive";;

let test_point_pair_to_recd () =
	unit_test(point_pair_to_recd ((1,3):point_pair) = ({x=1;y=3}:point_recd)) "point_pair_to_recd happy_path";;

let test_point_recd_to_pair () =
	unit_test(point_recd_to_pair ({x=1;y=3}:point_recd) = ((1,3):point_pair)) "point_recd_to_pair happy_path";;

(*Part II Unit Tests*)
let test_transcript () =
	unit_test(transcript college 993855891 = [{name = "Sandy"; id = 993855891; course = "ls1b"}; {name = "Sandy"; id = 993855891; course = "cs51"}]) "test_transcript happy_path";;

let test_ids () =
	unit_test(ids college = [482958285; 603858772; 993855891]) "ids happy_path";;

let test_verify () =
	unit_test((Lab3.verify college) = false) "verify false";
	unit_test((Lab3.verify college_true) = true) "verify true";;

(*Part III Unit Tests*)
let test_zip () = 
  unit_test ((zip [][]) = []) "zip empty";
  unit_test ((zip [1; 2; 3] ['a';'b';'c']) = [(1, 'a'); (2, 'b'); (3, 'c')]) "zip lists";;

let test_partition () =
	unit_test (partition (fun x -> x mod 3 = 0) [3; 4; 5; 10; 11; 12; 1] = ([3; 12], [4; 5; 10; 11; 1])) "partition list";;

let test_apply () =
	unit_test (apply (~-) 9 = ~-9) "apply negation";
	unit_test(apply pred 42 = 41) "apply pred";
    unit_test(apply (fun x -> x ** 2.) 3.14159 = 9.86958772809999907) "apply square";;

(*Run all unit tests.*)
let _ = test_add_point_pair () ;
test_add_point_recd () ;
test_dot_product_pair () ;
test_dot_product_recd () ;
test_point_pair_to_recd () ;
test_point_recd_to_pair () ;
test_transcript () ;
test_ids () ;
test_verify () ;
test_zip ();
test_partition ();
test_apply ();;


