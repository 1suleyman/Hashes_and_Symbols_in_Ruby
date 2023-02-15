movies = {
    "Bob the builder": 5
  }
  puts "What would you like to do?"
  choice = gets.chomp
  
  case choice
    when "add"
      puts "Enter a Movie title:"
      title = gets.chomp
      if movies[title.to_sym].nil?
        puts "Enter the Movie rating:"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "The Movie '#{title}' with a rating  of '#{rating}' has been successfully added!"
      else
      puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
    end
    when "update"
      puts "Enter a Movie title:"
      title = gets.chomp
      if movies[title.to_sym].nil?
        puts "That Movie is not in the database"
      else
        puts "Update the movie '#{movies[title]}''s rating'"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
      end
    when "display"
      movies.each do |title,rating| 
      puts "#{title}: #{rating}"
      end
    when "delete"
      puts "Enter the title of the movie you would like to delete:"
      title = gets.chomp
      if movies[title.to_sym].nil?
        puts "That Movie is not in the database"
      else 
        movies.delete(title.to_sym)
      end
    else 
      puts "Error!"
  end