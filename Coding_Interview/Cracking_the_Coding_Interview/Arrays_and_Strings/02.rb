=begin

# Problem
- Given two strings,
- Check to see if one string is a permutation of characters of the other

# Examples
p permutation?('stars', 'artss') == true
p permutation?('abcde', 'edcba') == true
p permutation?('22552556','22552555') == false
p permutation?('', '') == true
p permutation?('', ' ') == false

# Algorithm
- Given two strings,
- For each string, create an array of its individual characters and sort it
- If the two above arrays are the same,
  - Return true
- Else,
  - Return false

=end

def permutation?(str1, str2)
  str1.chars.sort == str2.chars.sort
end

p permutation?('stars', 'artss') == true
p permutation?('abcde', 'edcba') == true
p permutation?('22552556','22552555') == false
p permutation?('', '') == true
p permutation?('', ' ') == false
