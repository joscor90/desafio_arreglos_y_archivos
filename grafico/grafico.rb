#Chart method
def chart(arr)
    max = arr.max()
    arr.each do |ele|
        puts "|"+"*"*(ele*2)
    end
    puts ">"+"--"*(max)
    1.upto(max) do |i|
        print " #{i}"
    end
    puts
end

#Calling chart
chart([2, 3, 4, 5, 3, 3, 3, 6, 10, 20, 7])


