require_relative 'idfk.rb'

isbn_number = "123456789x"

def clean(isbn_num)
	isbn_num.delete(' ' '-')
end

def length_10(isbn_num)
length_10 = isbn_num.chop
  num = length_10.delete!('0-9')
  if num.length == 0
  	true
  else 
  	false
  end
end 
def isbn_thirteen_check_digit?(isbn_num)
  
  valid = false
  total = 0
  index_pos = 0
  index_count = 1
  even_odd = 2
  counter = isbn_num.chop

  
  counter.length.times do
    if even_odd % 2 == 0
      total = total + isbn_num[index_pos].to_i * 1
    else
      total = total + isbn_num[index_pos].to_i * 3
    end
      even_odd += 1
      index_pos += 1
  end

  check_digit = (10 - (total % 10)) % 10
  
  if check_digit == isbn_num[-1].to_i
    valid = true
  else
    valid = false
  end
  bucketlist = isbn_num.to_s + ", " + valid.to_s
 
valid
  
end

def letter_check_13(isbn_num)
    num = isbn_num.delete('0-9')
    if num.length == 0
      true
    else
      false
    end
end

# def test_x    
# def length_13
# 	length_13 = isbn_num.chop
# def isbn_length_13(isbn_number)
#       string = number
#     if string.length == 13
#      true
#     else 
#     false
# 	end
# end
def check_last_number?(isbn_clean)
    my_sum = 0
    isbn_clean = isbn_clean.delete("-")
    isbn_clean = isbn_clean.delete(" ")
    puts isbn_clean.length
    # "#{isbn_clean} AAAAAAAAAAAAAAAAAAAAAAAAAAAA"
    if isbn_clean.length == 10
    # isbn_clean = isbn_clean[0..9]    
   my_isbn_array = isbn_clean.split('')
    last_digit = my_isbn_array.pop
    my_isbn_array.each.with_index do |item,index|
        my_sum = my_sum + (item.to_i * (index.to_i + 1)) 
    end
        check_digit = my_sum % 11
        if check_digit.to_s == last_digit.to_s
            my_isbn_array << check_digit.to_s
            puts "#{my_isbn_array} is a valid ISBN number"
        elsif
        check_digit == 10
            check_digit = "X"
            if check_digit == last_digit.upcase
              isbn_clean.slice!(-1)
              if isbn_clean.include?("x")
                "invalid"
              elsif isbn_clean.include?("X")
                "invalid"
              else
                "valid"
              end
            else 
              p "invalid"
            end   
        else
             "invalid"
        end

    elsif isbn_clean.length == 13
        valid_keys = ["0","1","2","3","4","5","6","7","8","9"]
        counter = 0
        splitting = isbn_clean.split(//)
          splitting.each do |isbn|
            if valid_keys.include?(isbn)
              counter +=1
            end
          end
          
          if counter == 13
              if isbn_thirteen_check_digit?(isbn_clean) == true
                "valid"
              else 
               "invalid"
              end
          else 
            "invalid"
          end
    else 
          "invalid" 
    end

end 
# check_last_number?("7421  3--94-761")


def check_last_index10(isbn_num)
	#Checks to see if the item in the last index position is either a single digit # or x.
	if isbn_num[-1].match(/[0-9xX]/) 
		true
	else
		false
	end
end


# lets the final element be a letter with the .chop
# checks for letters here too


# def isbn_fixing_x(number)
# 	  index[9]=10
