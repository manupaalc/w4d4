# def sub_sum(array)
    # sub = []
    # (0...array.length).each do |i|
    #    (0... array.length).each do |j|
    #         sub << array[i..j].sum
    #     end
    # end
    # sub.max
#     max = 0
#     (1...array.length).each do |i|
#         max =  i if array[i] > array[max]
#     end
#     # p max
#     sub_max = []
#     (0..max).each do |i|
#         sub_max << array[i..max].sum  # .sum is linear operation, could be quadratics 
#     end
#     j = array.length - 1
#     while j >= max
#         sub_max << array[max..j].sum
#         j -=1
#     end
#     sub_max.max
# end

def sub_sum(array)

    greatest_sum = array.first 
    current_sum = array.first 

    array[1..-1].each do |ele| # linear
        current_sum = 0 if current_sum < 0 # constant
        current_sum += ele  # constant
        greatest_sum = current_sum if current_sum > greatest_sum  # constant
    end
    greatest_sum
end


list = [2, 3, -6, 7, -6, 7]
 p sub_sum(list) # => 8 (from [7, -6, 7])