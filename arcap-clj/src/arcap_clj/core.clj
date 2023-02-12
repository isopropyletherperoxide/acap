(ns arcap-clj.core
  (:gen-class))


(defn get-digit
  [string digit]
  (Character/digit (nth string digit) 10))


(defn arcap
  [string]
  (* (+ (* (get-digit string 0) 10) (get-digit string 1)) (Math/pow 10 (get-digit string 2))))

(defn -main
  "I don't do a whole lot ... yet."
  [& args]
  (when (empty? args)
    (println "Not enough arguments!") (System/exit 1))
  (printf "%.2f %s \n" (arcap (nth args 0)) "pF")
  (printf "%.3f %s \n" (/ (arcap (nth args 0)) 1000) "nF")
  (printf "%.6f %s \n" (/ (arcap (nth args 0)) 1000000) "uF")
  (flush)
  )
