(* 1.1 *)
fun g n = n+4

(* 1.2 *)
fun h(x, y) = Math.sqrt(x*x + y*y)

(* 1.3 *)
fun f 1 = 1
  | f n = n + f(n-1)

(* 1.4 *)
fun sum(m, 0) = m
  | sum(m, n) = m + n + sum(m, n-1)

(* 1.5 *)
fun fib 0 = 0
  | fib 1 = 1
  | fib n = fib(n-1) + fib(n-2)
