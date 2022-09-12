# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Bookmark.destroy_all
List.destroy_all
Movie.destroy_all

first_movie = Movie.create!(
  title: 'Wonder Woman 1984',
  overview: 'Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s',
  poster_url: 'https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg',
  rating: 6.9
)
second_movie = Movie.create!(
  title: 'The Shawshank Redemption',
  overview: 'Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison',
  poster_url: 'https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg',
  rating: 8.7
)
third_movie = Movie.create!(
  title: 'Titanic',
  overview: '101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.',
  poster_url: 'https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg',
  rating: 7.9
)
fourth_movie = Movie.create!(
  title: 'The Green Mile',
  overview: 'A supernatural tale set on death row in a southern prison',
  poster_url: 'https://image.tmdb.org/t/p/original/velWPhVMQeQKcxggNEU8Ymlo52R.jpg',
  rating: 8.5
)
fifth_movie = Movie.create!(
  title: "Ocean's Eight",
  overview: 'Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.',
  poster_url: 'https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg',
  rating: 7.0
)

first_list = List.create!(name: 'Drama', image_url: 'https://media.gqmagazine.fr/photos/602a685fa7e774b0f42a1fc0/master/w_3000,h_2032,c_limit/MSDTITA_FE057.jpg')
second_list = List.create!(name: 'All time favourites', image_url: 'https://blog.cambly.com/wp-content/uploads/2016/07/favorite-movies-of-all-time.png?w=700')
third_list = List.create!(name: 'Girl Power', image_url: 'https://image.shutterstock.com/image-vector/girl-power-inscription-handwritten-bright-260nw-1024195720.jpg')

Bookmark.create!(comment: 'Recommended by John', movie: third_movie, list: second_list)
Bookmark.create!(comment: 'Superhero movie revisited in 2020', movie: first_movie, list: third_list)
Bookmark.create!(comment: "Spielberg's masterly Oscar-winning drama", movie: second_movie, list: second_list)
Bookmark.create!(comment: '2020 release', movie: fifth_movie, list: first_list)
Bookmark.create!(comment: "Based on Stephen King's 1996 novel", movie: fourth_movie, list: third_list)
