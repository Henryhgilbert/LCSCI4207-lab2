use context starter2024
include csv
include data-source
# Problem 1 - Leap Year
# Problem 1 - Leap Year

fun is-leap-year(year :: Number) -> Boolean:
  doc: "returns true if the year is a leap year, otherwise false"

  if num-modulo(year, 400) == 0:
    true
  else if num-modulo(year, 100) == 0:
    false
  else if num-modulo(year, 4) == 0:
    true
  else:
    false
  end

where:
  is-leap-year(2024) is true
  is-leap-year(2025) is false
  is-leap-year(1900) is false
  is-leap-year(2000) is true
end
# Problem 2 - Tick

fun tick(seconds :: Number) -> Number:
  doc: "returns the next second on a clock, with 59 going back to 0"

  if seconds == 59:
    0
  else:
    seconds + 1
  end

where:
  tick(0) is 1
  tick(30) is 31
  tick(58) is 59
  tick(59) is 0
end
# Problem 3 - Rock Paper Scissors

fun rock-paper-scissors(player1 :: String, player2 :: String) -> String:
  doc: "returns the winner of rock paper scissors, tie if equal, or invalid choice for invalid inputs"

  if not((player1 == "rock") or (player1 == "paper") or (player1 == "scissors")):
    "invalid choice"
  else if not((player2 == "rock") or (player2 == "paper") or (player2 == "scissors")):
    "invalid choice"
  else if player1 == player2:
    "tie"
  else if ((player1 == "rock") and (player2 == "scissors")):
    "player 1"
  else if ((player1 == "paper") and (player2 == "rock")):
    "player 1"
  else if ((player1 == "scissors") and (player2 == "paper")):
    "player 1"
  else:
    "player 2"
  end

where:
  rock-paper-scissors("rock", "rock") is "tie"
  rock-paper-scissors("rock", "scissors") is "player 1"
  rock-paper-scissors("rock", "paper") is "player 2"
  rock-paper-scissors("paper", "rock") is "player 1"
  rock-paper-scissors("scissors", "paper") is "player 1"
  rock-paper-scissors("pizza", "rock") is "invalid choice"
  rock-paper-scissors("rock", "pizza") is "invalid choice"
end
# Problem 4 - Planets

planets = table:
  planet :: String,
  distance :: Number
  row: "Mercury", 0.39
  row: "Venus", 0.72
  row: "Earth", 1
  row: "Mars", 1.52
  row: "Jupiter", 5.2
  row: "Saturn", 9.54
  row: "Uranus", 19.2
  row: "Neptune", 30.06
end

mars = planets.row-n(3)

mars["distance"]
# Problem 5 - Bank of England Rates

something = load-table:
  year :: Number,
  day :: Number,
  month :: String,
  rate :: Number
  source: csv-table-file("boe_rates.csv", default-options)
  sanitize year using num-sanitizer
  sanitize day using num-sanitizer
  sanitize rate using num-sanitizer
end

# Total number of rows
something.length()
# I successfully loaded and sanitized the data and found that the table has 835 rows.
# I was unable to get the median, mode, and sorting functions to work in my current Pyret context.