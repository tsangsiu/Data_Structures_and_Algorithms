=begin

# Problem
- Write a method to replace all spaces in a string to "%20"
- You should modify the string in place

# Examples
str = "Mr John Smith"
urlify!(str)
p str == "Mr%20John%20Smith"

# Algorithm
- Use the `gsub!` method with parameters " " and "%20"

=end

def urlify!(str)
  str.gsub!(" ", "%20")
end

str = "Mr John Smith"
urlify!(str)
p str == "Mr%20John%20Smith"
