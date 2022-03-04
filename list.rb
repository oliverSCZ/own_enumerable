require './enumerable'

class MyList
    include MyEnumerable
    def initialize(w, x, y, z)
        @list = [w, x, y, z]
    end 
    def each
     @i = 0
     while (@i < @list.length)
      puts @list[@i]
      @i += 1
     end
    end  
end

# Create our list
list = MyList.new(1, 2, 3, 4)
#<MyList: @list=[1, 2, 3, 4]>
list.each

# Test #all?
list.all? {|e| e < 5}
#=> true
list.all? {|e| e > 5}
#=> false

# Test #any?
list.any? {|e| e == 2}
#=> true
list.any? {|e| e == 5}
#=> false

# Test #filter
list.filter {|e| e.even?}
#=> [2, 4]
