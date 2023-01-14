# PROBLEM
#
# Modify the method from the previous exercise so it ignores non-alphabetic
# characters when determining whether it should uppercase or lowercase each
# letter. The non-alphabetic characters should still be included in the return
# value; they just don't count when toggling the desired case.
# Requirements
#   Explicit
#     -Take a string as input
#     -Return a string with alternating capitalization
#     -Ignore non-alphabetic characters
#
# Example:
#
# staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# staggered_case('ALL CAPS') == 'AlL cApS'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
#
# DATA STRUCTURES
# Take a string as input
# Return a new string as ouput
#
# ALGORITHM
# Take a string as input
# initialize a result string
# initialize a count variable
# for each character in the string
#   if the character is alphabetic
#     append character upcase to result if count is even
#     append character downcase to result if count is odd
#     increment count
#   else
#     append character to result string
# Return result string
#
# CODE

def staggered_case(str)
  result_str = ''
  count = 0
  str.each_char do |char|
    if char.match(/[a-zA-Z]/)
      result_str += char.upcase if count.even?
      result_str += char.downcase if count.odd?
      count += 1
    else
      result_str += char
    end
  end
  result_str
end

# TEST CASES
#
puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
