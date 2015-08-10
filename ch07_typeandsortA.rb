# Let's write a program which asks us to type in as many words as we want 
# (one word per line, continuing until we just press Enter on an empty line), 
# and which then repeats the words back to us in alphabetical order.

puts 'Enter some words'
input = 0
array = []
while input != ''
    input = gets.chomp
    array.push input
end
puts array.sort