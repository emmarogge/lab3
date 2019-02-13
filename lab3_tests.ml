open Lab3;;
open CS51 ;; (* for access to the unit_test function *)

(*Unit tests*)
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

(*Run all unit tests.*)
let _ = test_add_point_pair () ;;
let _ = test_add_point_recd () ;;
let _ = test_dot_product_pair () ;;
let _ = test_dot_product_recd () ;;
let _ = test_point_pair_to_recd () ;;
let _ = test_point_recd_to_pair () ;;
