# PROBLEM
#
# Write a method that takes a string, and then returns a hash that contains
# 3 entries: one represents the number of characters in the string that are
# lowercase letters, one the number of characters that are uppercase letters,
# and one the number of characters that are neither.
# Requirements
#   Explicit
#     - Take a string as input
#     - Return a hash
#       - Hash should contain three entries
#         - number of uppercase letters
#         - number of lowercase leters
#         - number of non-letters
#
# EXAMPLES

# letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
#
# DATA STRUCTURES
# Take a string as input
# Return a hash as output
#
# ALGORITHM
# Take a string as input
# Initialize the letter_count hash
# set letter_count[:lowercase] to the count of lowercase characters
# set letter_count[:uppercase] to the count of uppercase characters
# set letter_count[:neither] to the count of non-alphabetic characters
# return letter_count
#
# CODE
#
def letter_case_count(str)
  letter_count = {}
  letter_count[:lowercase] = str.count("a-z")
  letter_count[:uppercase] = str.count("A-Z")
  letter_count[:neither] = str.count("^a-zA-Z")
  letter_count
end

# TEST CASES
#
puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

