;; NOTE: This was made using Clojure CLI 1.11.1.1200

(def LOOPS 100)

;;
; A Program that loops from 1 to the number in the above "LOOPS" variable
; and prints the corresponding FizzBuzz value for each number.
;
; Divisible by 3: "Fizz"
; Divisible by 5: "Buzz"
; Divisible by 3 and 5: "FizzBuzz"
; Else, just print the current number.
;;

(defn modZero [num,mod]
  (= 0 (rem num mod)))

(defn word [num]
  (if (modZero num 15) "FizzBuzz"   ; Divisible by 3 and 5 (so 15 here) outputs "FizzBuzz"
    (if (modZero num 3) "Fizz"      ; Divisible by 3 outputs "Fizz"
      (if (modZero num 5) "Buzz"    ; Divisible by 5 outputs "Buzz"
        num))))                     ; If none before work then output the number itself.

(loop [i 1]
  (when (<= i LOOPS)
    (println (word i))
    (recur (inc i))))
