#Chart method
def chart(arr)
    max = arr.max()
    arr.each do |ele|
        puts "|"+"*"*(ele*2)
    end
    print ">"
    1.upto(max) do |i|
        print ("-")*((i.to_s).length + 1)
    end
    print "\n"
    1.upto(max) do |i|
        print " #{i}"
    end
    puts
end


