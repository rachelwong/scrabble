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


def use_previous(first_word, new_word)
    first_array = first_word.chars
    new_array = new_word.chars
    index = 0 
    for char in first_array do
        p "this is char #{char}s"
        while index < new_array.length
            p "this is #{index}"
            if char != new_array[index]
                p "checking char #{char} against #{new_array[index]}"
                index += 1
            elsif char == new_array[index]
                return true
            end
            index += 1
        end
    end
end

p use_previous("apple", "phoning")