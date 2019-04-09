# def maskify(cc)
#     if cc.length > 4
#         index = -5
#         array = cc.to_s.split(//).map{|chr| chr.to_i}
        
#         while index < -4
#             p array[-5]
#             index = index - 1
#         end
#     end
#     return cc
# end

# maskify('4556364607935616') # should return '############5616'
# maskify('64607935616')      # should return '#######5616'

# check if the new_word uses a letter from the first_word
def use_previous(first_word, new_word)
    first_array = first_word.chars
    new_array = new_word.chars
    index = 0 

    while index < new_array.length
        if first_array.include? (new_array[index])
            return true
        else
            index += 1
        end
        return false
    end
end

def check(word)
    array = word.chars
    if array.length > 3
        return true
    else
        return false
    end
end

def compare(first_word, second_word, third_word)
    if use_previous(first_word, new_word) == true && check(third_word) == true
        puts "everything is true"
    elsif use_previous(first_word, new_word) == true && check(third_word) == false
        puts "check is false"
    else
        puts "everything is false"
    end
end

compare("maypleleaf", "xrrrrr", "apple")
# p use_previous("duck","pony")

