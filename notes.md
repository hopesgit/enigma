# Hope's notes:
## Basic cipher:
* only a-z
* all letters shifted by number
  * ex: "abcde" becomes "bcdef" w/ shift 1
  * shift of 0 or 26 does no shifting
* easy to guess
* "E" is most common letter in alphabet, could be a clue

## Turing cipher:
* a-z + space
* choose 5-character (num-only) code randomly
* cipher translated 4 chars at a time based on:
  * code (random): 19453
  * A key: 19
  * B key: 94
  * C key: 45
  * D key: 53

  * offset: current date (format: DD/MM/YY)
    * use strftime method to format to below
    * date: 18/09/20
    * square the numeric form (32732046400)
    * keep the last 4 digits: 6400
    * A offset: 6
    * B offset: 4
    * C offset: 0
    * D offset: 0

  * total shift: key + offset
    * A: 19 + 6 = 25
    * B: 94 + 4 = 98
    * C: 45 + 0 = 45
    * D: 53 + 0 = 53

  * ex:
    * "hello world"
    * gets separated into each character as an array (String#to_a)
    * h -> f (25%27 == 25)
    * e -> v (98%27 == 17)
    * l -> c (45%27 == 18)
    * l -> k (53%27 == 26)
    * o -> m (25)
    * " " -> q (17)
    * w -> n (18)
    * o -> n (26)
    * r -> p (25)
    * l -> b (17)
    * d -> v (18)
    * "hello world" -> "fvckmqnnpbv"

  * not sure how to do decryption yet
    * need date of transmission and key
  * cracking:
    * need date of transmission
  * need to be able to generate number keys with leading zeros (ex: 01111)
  * probably want to create a hash or file with values relating to alphabet placement
  * characters not within placement set do not get translated (ex: !)
  * maybe make shift_key classes?
