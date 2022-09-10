# part 1
def sum arr
  if arr.length() > 1
    arr.sum()
  else
    0
  end
end

def max_2_sum arr

  if arr.length() == 1
    return arr[0]
  elsif arr.length() > 1
    return  arr.max(2).sum()
  else
    return 0
  end
end

def sum_to_n? arr,n

  if arr.length() < 1
    return false
  else
    arr.each_with_index do |x,idx|
      arr.each_with_index do |y,idy|
        if x+y == n and idx != idy
          return true
        end
      end
    end
    return false
  end
end

# part 2

def hello name
  return "Hello, " + name
end

def starts_with_consonant?(s)

  if s.size() < 0
    return false
  else
    "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ".each_char { |consonant|
      if s[0] == consonant
        return true
      end
    }
    return false
  end
end

def binary_multiple_of_4? s
  
  if !s.length
    return false
  elsif !s.match("^[01]+$")  #s =~ /[^0-1]/
    return false
  else
    if s.to_i % 4 == 0
      return true
    end
    return false
  end
end

# part 3

class BookInStock
  # attr_accessor :isbn, :price
  
  def initialize(isbn, price)

    if isbn.empty? 
      raise(ArgumentError,"ISBN can not be empty.")

    elsif price <= 0
      raise(ArgumentError,"Price can not be less or equal to 0.")
    end
    
    @isbn, @price = isbn, price
    
  end 

  def isbn
		@isbn
	end

  def isbn=(isbn_new)
		@isbn=isbn_new
	end

	def price
		@price
	end

	def price=(price_new)
		@price=price_new
	end

  def price_as_string
    output = sprintf( "$%0.02f", @price)
    return output
  end
end