(ns guess.core)

;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;;
;; guess my number game
;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;;

;; ;;
;; german status texts
;; could be later extended for other languages

;; I think of a number between 0 and 100.
(defn get-intro-text []
	"Ich denke an eine Zahl zwischen 0 und 100.")

;; Guess what number it is.
(defn get-guess-text []
	"Rate welche es ist!")

;; My number is bigger.
(defn get-bigger-text []
	"Meine Zahl ist größer.")

;; My number is smaller.
(defn get-smaller-text []
	"Meine Zahl ist kleiner.")

;; You won, Congratulations!
(defn get-winner-text []
	"Du hast es erraten. Herzlichen Glückwunsch!")

;; Do you want to play again? j|n
(defn get-again-text []
	"Möchtest du noch einmal spielen? j|n")


;; ;;
;; helper for parsing and prompts

(defn parse-int [val]
	(try
		(Integer/parseInt (re-find #"^-?\d+$" (.toString val)))
		(catch NumberFormatException e nil)
		(catch NullPointerException e nil)))

(defn get-input
	([] (get-input nil))
	([default]
	 (let [input (clojure.string/trim (read-line))]
		 (if (empty? input)
			 default
			 (clojure.string/lower-case input)))))

(defn get-number-input []
	(let [num (parse-int (get-input))]
		(if (nil? num) (recur) num)))

(defn get-prompt-for-text-input
	([prompt default] (println (str prompt " ")) (get-input default))
	([prompt] (get-prompt-for-text-input prompt nil)))

(defn get-prompt-for-number-input [prompt]
	(println (str prompt " ")) (get-number-input))

(defn get-guess [prompt]
	(get-prompt-for-number-input prompt))

(defn get-answer [prompt text]
	(get-prompt-for-text-input prompt text))

;; ;;
;; game logic

(defn guess-my-number [my-num]
	(let [guess (get-guess (get-guess-text))]
		(if (< guess my-num)
			(do (println (get-bigger-text))
				(recur my-num))
			(if (> guess my-num)
				(do (println (get-smaller-text))
					(recur my-num))
				(println (get-winner-text))))))

(defn generate-my-number [min-val max-val]
	(let [my-max (max min-val max-val) my-min (min min-val max-val)]
		(+ (rand-int (- (inc my-max) my-min)) my-min)))

(defn -main []
	(let [number (generate-my-number 0 100)]
		(println (get-intro-text))
		(guess-my-number number)
		(if (let [answer (get-answer (get-again-text) "j")]
				(not= "n" answer)) (recur))))
(-main)
