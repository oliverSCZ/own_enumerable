module MyEnumerable
    def all?
      @return_value = true
      @list.each do |n|
        if yield (n)
          @return_value = true
        else
          @return_value = false
        end
      end
      return @return_value
    end
    def any?
      @return_value = false
      @list.each { |n| @return_value = true if yield (n) }
      return @return_value
    end
end    