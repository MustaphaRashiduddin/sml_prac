(* Area of circle with radius r *)
fun circleArea r = Math.pi * r * r;

(* factorial function *)
fun fact 0 = 1
  | fact n = n * fact (n-1);

(* power function *)
fun power(x, 0) = 1
  | power(x, n) = x * power(x, n-1)
