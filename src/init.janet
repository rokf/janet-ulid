(def- encoding ["0" "1" "2" "3" "4" "5" "6" "7" "8" "9"
                "A" "B" "C" "D" "E" "F" "G" "H" "J" "K" "M"
                "N" "P" "Q" "R" "S" "T" "V" "W" "X" "Y" "Z"])

(defn- encode-time []
  (var millis (math/floor (* 1000 (os/time))))
  (def res @[])
  (for i 0 10 (do
                (def m (mod millis 32))
                (array/push res (get encoding m))
                (set millis (/ (- millis m) 32))))
  (string/join (reverse res)))

(defn- encode-random []
  (def res @[])
  (for i 0 16 (do
                (array/push res (get encoding (math/floor (* 32 (math/random)))))))
  (string/join res))

# @TODO switch to a safer implementation
# (defn- encode-random-crypto []
#   (string/join (map |(get encoding $) (map |(+ ;$) (partition 2 (map |(scan-number (string/format "0x%c" $)) (string/join (map |(string/format "%02x" $) (os/cryptorand 16)))))))))

(defn make
  "Returns a new ULID in string form."
  []
  (string (encode-time) (encode-random)))
