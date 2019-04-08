# EXPERIMENT FILE


# def calculate(word)
#   letter_scores = {  "A"=>1, "B"=>3, "C"=>3, "D"=>2,
#     "E"=>1, "F"=>4, "G"=>2, "H"=>4,
#     "I"=>1, "J"=>8, "K"=>5, "L"=>1,
#     "M"=>3, "N"=>1, "O"=>1, "P"=>3,
#     "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
#     "U"=>1, "V"=>4, "W"=>4, "X"=>8,
#     "Y"=>4, "Z"=>10
#   }
#   score =0
#   word_array = word.split('')
#   for char in word_array do
#     # if character is a key in hash
#     if letter_scores.has_key?(char)
#       # increment score with value of key
#       score += letter_scores[char]
#     else
#       # score does not change 
#       score += 0
#     end
#   end
#   return score
# end

# # p calculate("BEAR") #=> 6
# p calculate("CAR") #=> 5 

# p (0...8).map { (65 + rand(26)).chr }