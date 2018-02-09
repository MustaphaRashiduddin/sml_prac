(* 2.1 *)
fun bin(n, 0) = 1
  | bin(n, k) = if n = k then 1 else bin(n-1, k-1) + bin(n-1, k)

(* 2.2 *)
fun pow(s, 1) = s
  | pow(s, n) = s ^ pow(s, n-1)

(* 2.3 *)
fun isIthChar(str, i, ch) = if String.sub(str, i) = ch then true else false

(* 2.4 *)
fun aux(str, sz, min, ch) = if sz = min then
                              if String.sub(str, min) = ch then 
                                1 
                              else 
                                0 
                            else
                              if String.sub(str, sz) = ch then 
                                1 + aux(str, sz-1, min, ch) 
                              else 
                                aux(str, sz-1, min, ch)
fun occFromIth(str, n, ch) = if n >= size(str) then 0 else aux(str, size(str)-1, n, ch)

(* 2.5 *)
fun occInString(str, ch) = aux(str, size(str)-1, 0, ch)

(* 2.6 *)
fun notDivisible(d, n) = n mod d <> 0

(* 2.7 a *)
fun notDivisibleRange(a, b, c) = if a = b then 
                                   notDivisible(a, c) 
                                 else 
                                   if notDivisible(a, c) <> true then
                                     false
                                   else
                                     notDivisibleRange(a+1, b, c)

(* 2.7 b *)
fun prime(n) = notDivisibleRange(2, n-1, n)

(* 2.7 c *)
fun auxNextPrime(n) = if prime(n) then n else auxNextPrime(n+1)
fun nextPrime(n) = auxNextPrime(n+1)

(*
 * 2.8
 * a) int * int -> int
 * b) x > 0
 * c) TODO evaluation steps for f(2, 3)
 * d) a function that takes 2 parameters of the integer type and returns an integer (i don't know if that's the mathematical meaning though)
 *)

 (*
  * 2.9
  * a) bool * int -> int
  * b)
  *)
