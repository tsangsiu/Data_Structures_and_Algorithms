=begin

# Problem
- Given a string,
- Check if it is a permutation of a palindrome
- Rules
  - Cases are not important
  - Consider alphabets only

- Input: String
- Output: Boolean

# Examples
p permutation_palindrome?("Tact Coa") == true # permutations: "raco cat", "atco cta", etc.

# Brainstorm
- For a given string with even number of letters,
  - it is a permutation of a palindrome if all unique alphabets in the string appears even number of times
- For a given string with odd number of letters,
  - it is a permutation of a palindrome if there is only one alphabet appears odd number of times, while the others appear even number of times

# Algorithm
- The main method `permutation_palindrome?`
- Given a string,
  - turn it to downcase
  - turn it to an array of individual characters
  - count individual characters (another method to be defined)
  - If the counts are all even, or only one count is odd,
    - return true
  - else,
    - return false

- The method to count alphabets
  - Initialize `counts` to an empty hash
  - Iterate through the alphabets in the given string
  - Tally each alphabets
  - return `counts`

=end

# Code
def count_alphabets(str)
  counts = Hash.new(0)
  chars = str.downcase.chars
  chars.select! { |char| ('a'..'z').include?(char) }
  chars.each do |char|
    counts[char] += 1
  end
  counts
end

def permutation_palindrome?(str)
  counts = count_alphabets(str)
  counts = counts.values
  counts.all? { |count| count.even? } || counts.count { |count| count.odd? } == 1
end

p permutation_palindrome?("Tact Coa") == true
p permutation_palindrome?("Racecar")
