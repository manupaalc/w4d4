def my_min(list)
    # min = 0
    # list.each do |ele1|
    #     list.each do |ele2|
    #         min = ele1 if ele1 < ele2 && ele1 < min
    #     end
    # end
    # min

    list.inject(0) {|min, n| min < n ? min : n}
end


list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list) 