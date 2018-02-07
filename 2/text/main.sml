(* 2.4.1 Evaluation for the gcd function *)
fun gcd(0, n) = n
  | gcd(m, n) = gcd(n mod m, m)

(* 2.4.2 Evaluations with several environments *)
fun fct 0 = 1
  | fct n = fct(n-1) * n

(* even funciton  *)
fun even n = if n mod 2 = 0 then true else false

fun adjString s = if even(size s) then s else " "^s
