dial_book={
    "newyork"=> "212",
    "newbrunswick"=> "732",
    "edison"=> "909",
    "plainsboro"=> "609",
    "maimi"=> "305",
    "plaoltu"=> "650"
}

# Get city names from the hash
def get_city_names(cityName)
    cityName.keys
end

# Get area cod based on given hash and key
def get_area_code(cityName,key)
    cityName[key]
end

# Execution flow
loop do 
    puts "Do you want to lookup an area code based on a city name?(Y/N)"
    answer = gets.chomp.downcase
    break if answer != "y"
    puts "which city do you want to lookup the areacode for?"
    puts
    40.times {print "-" }
    puts
    puts get_city_names(dial_book)

    40.times {print "-" }
    puts "please enter the city name"
    puts
    prompt = gets.chomp
    if dial_book.include?(prompt)
        puts "The area_cod for #{prompt} is #{get_area_code(dial_book, prompt)}"
    else
        puts "Wrong City name"
    end
end

