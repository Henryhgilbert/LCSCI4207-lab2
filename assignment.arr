import file("lab2-support.arr") as support
support.encryptor1("cat")
fun my-encryptor1(s :: String) -> String:
  s + s + s + s + s
end

support.test-encryptor1(my-encryptor1)
# Encryptor 2
support.encryptor2("hello")
support.encryptor2("computer")
# Encryptor 2 takes the first 4 characters
fun my-encryptor2(s :: String) -> String:
  string-substring(s, 0, 4)
end

support.test-encryptor2(my-encryptor2)
# Encryptor 3 experiments
support.encryptor3("0123456789")
support.encryptor3("abcdefghij")
support.encryptor3("ABCDEFGHIJ")
support.encryptor3("a1b2c3d4e5")
support.encryptor3("1234567890")
# Encryptor 4 experiments
support.encryptor4("hello")
support.encryptor4("computer")
support.encryptor4("abcdef")
support.encryptor4("123456")
support.encryptor4("hello world")
# Encryptor 4 takes the first 4 characters and repeats them 5 times
fun my-encryptor4(s :: String) -> String:
  string-substring(s, 0, 4) +
  string-substring(s, 0, 4) +
  string-substring(s, 0, 4) +
  string-substring(s, 0, 4) +
  string-substring(s, 0, 4)
end

support.test-encryptor4(my-encryptor4)
# Encryptor 5 experiments
support.encryptor5("hello")
support.encryptor5("computer")
support.encryptor5("abcdef")
support.encryptor5("123456")
support.encryptor5("hello world")
# Test which letters Encryptor 5 changes
support.encryptor5("abcdefghijklmnopqrstuvwxyz")
support.encryptor5("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
# I tested several inputs for Encryptor 5 but was unable
# to determine the exact pattern for all test cases.
# Encryptor 6 experiments
fun my-encryptor6(s :: String) -> String:
  doc: "converts to lowercase and removes r characters"
  string-replace(string-to-lower(s), "r", "")
end
support.test-encryptor6(my-encryptor6)
support.encryptor6("racecar")
support.encryptor6("orange")
support.encryptor6("are")
support.encryptor6("RIVER")
support.encryptor6("red")
support.encryptor6("tree")
support.encryptor6("rRrR")
support.encryptor6("Robert River")
# Encryptor 7 experiments
support.encryptor7("hello")
support.encryptor7("computer")
support.encryptor7("abcdef")
support.encryptor7("123456")
support.encryptor7("hello world")
support.encryptor7("a")
support.encryptor7("ab")
support.encryptor7("abc")
support.encryptor7("ABCDE")
support.encryptor7("")
fun my-encryptor7(s :: String) -> Number:
  doc: "returns the length of the string"
  string-length(s)
end

support.test-encryptor7(my-encryptor7)
# Encryptor 8 experiments
support.encryptor8("hello")
support.encryptor8("computer")
support.encryptor8("abcdef")
support.encryptor8("123456")
support.encryptor8("hello world")
support.encryptor8("a")
support.encryptor8("ab")
support.encryptor8("abc")
support.encryptor8("ABCDE")
support.encryptor8("")
fun my-encryptor8(s :: String) -> String:
  doc: "adds three exclamation marks and repeats the string three times"
  string-repeat(s + "!!!", 3)
end

support.test-encryptor8(my-encryptor8)
# Encryptor 9 experiments
support.encryptor9("hello")
support.encryptor9("computer")
support.encryptor9("abcdef")
support.encryptor9("123456")
support.encryptor9("hello world")
support.encryptor9("a")
support.encryptor9("ab")
support.encryptor9("abc")
support.encryptor9("ABCDE")
fun my-encryptor9(s :: String) -> Number:
  doc: "takes characters 2 through 4 and repeats them five times"
  string-to-code-point(string-substring(s, 0, 1))
end
# Encryptor 10 experiments
support.encryptor10("abcd")
support.encryptor10("abcde")
support.encryptor10("abcdef")
support.encryptor10("Xabc")
support.encryptor10("aXbc")
support.encryptor10("abXc")
support.encryptor10("abcX")
fun my-encryptor10(s :: String) -> String:
doc: "takes characters 2 through 4 and repeats them five times"
string-repeat(string-substring(s, 1, 4), 5)
end

support.test-encryptor10(my-encryptor10)
# I tested several inputs and found that the encryptor uses
# characters from the beginning of the string and repeats them.
# I was unable to determine the exact pattern for all test cases.