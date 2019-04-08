# def square_digits (num)
#     array = num.to_s.split(//).map{|chr| chr.to_i}
#     array.map!{ |x|
#         x = x**2
#     }
#     p array.join.to_i
# end
# square_digits(3112)

# array = [1, 2, 3, 4]
# array.map!{ |num|
#     num +=1
# }

# p array

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

def find_outlier(integers)
    # odd =0
    # even= 0
    # for the length of integers
    # if int in integer % 2 == 0
    # even += 1
    # if int in integer %2 == 1
    # odd += 1

    # if odd > even
end

find_outlier([2, 4, 0, 100, 4, 11, 2602, 36]) #=> 11
# find_outlier([160, 3, 1719, 19, 11, 13, -21]) #=> 160