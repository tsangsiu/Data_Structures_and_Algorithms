=begin

# Problem
- Write a method to determine if a string has all unique characters
- Input: String
- Output: Boolean

# Examples
p unique_chars?('abcde') == true
p unique_chars?('aabbcc') == false
p unique_chars?('') == true

# Brainstorm
- A string has all unique characters if the array of individual characters sorted is the same as the array of unique individual characters sorted

# Algorithm
- Given an array,
  - Check to see if the array of individual characters sorted is the same the same as the array of unique individual characters sorted
  - If yes,
    - Return true
  - Else,
    - Return false

=end

def unique_chars?(str)
  str.chars.sort == str.chars.uniq.sort
end

=begin

# Problem
- The same problem
- But this time, you cannot use additional data structures

# Algorithm
- Iterate through the given string character by character,
  - Count the number of the current character in the given string
  - If the count is greater than 1,
    - Return false
- Return true

=end

def unique_chars?(str)
  str.each_char do |char|
    return false if str.count(char) > 1
  end
  true
end

p unique_chars?('abcde') == true
p unique_chars?('aabbcc') == false
p unique_chars?('') == true
