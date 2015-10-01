movies = {
    AgeofUltron: 5,
    Avengers: 5
}

puts "What would you like to do?"
puts "Add a Movie"
puts "Update a Movie Rating"
puts "Display Movies"
puts "Delete a Movie"
choice = gets.chomp

case choice
when "add"
    puts "What is the movie title?"
    title = gets.chomp
    title = title.to_sym
    if movies[title.to_sym].nil?
        puts "What is the movie rating?"
        rating = gets.chomp
        rating = rating.to_i
        movies[title] = rating
        puts "The movie #{title} with a #{rating} rating was added!"
    else
        puts "The movie already exists you slut!"
    end
when "update"
    puts "What movie do you want to update?"
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "No such movie in storage you bitch"
    else
       puts "What rating do you want to give the movie?"
       rating = gets.chomp
       rating = rating.to_i
       movies[title.to_sym] = rating
       puts "The movie #{title} with a #{rating} rating was updated!"
    end
when "display"
    movies.each do |movie, rating|
        puts "#{movie}: #{rating}"
    end
when "delete"
    puts "What movie do you want to delete?"
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "No such movie in storage you bitch"
    else
        movies.delete(title.to_sym)
        puts "#{title} has been removed."
    end
else
    puts "Error! I don't speak bitch"
end