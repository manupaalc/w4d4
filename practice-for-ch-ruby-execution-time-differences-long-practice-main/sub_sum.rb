def sub_sum(array)
    # sub = []
    # (0...array.length).each do |i|
    #    (0... array.length).each do |j|
    #         sub << array[i..j].sum
    #     end
    # end
    # sub.max
    max = 0
    (1...array.length).each do |i|
        max =  i if array[i] > array[max]
    end
    p max
    sub_max = []
    (0..max).each do |i|
        sub_max << array[i..max].sum
    end
    j = array.length - 1
    while j >= max
        sub_max << array[max..j].sum
        j -=1
    end
    sub_max.max
end

list = [2, 3, -6, 7, -6, 7]
 p sub_sum(list) # => 8 (from [7, -6, 7])