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

#Calling chart and test output
chart([1, 3, 4, 4, 6, 10])


