def clean(number)
    string = number
    string.gsub!("-", "")
    string.gsub!(" ", "")
    puts number
end
def isbn_length(number)
       string = number
    if string.length == 10 
     true
    else string.length == 13
     true
    end
end

isbn_length("100")

def isbn_length_10(number)
       string = number
    if string.length == 10 
     true
    else 
    false
end
end

def isbn_length_13(number)
      string = number
    if string.length == 13
     true
    else 
    false
end
end

# def isbn_fixing_x(number)
# 	  index[9]=10
