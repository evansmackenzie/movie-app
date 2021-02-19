Movie.create!([
  {title: "Tales from Earthsea", year: 2006, plot: "A young boy runs from his dark side in a mythical land, and picks up magical friends along the way.", director: "Goro Miyazaki", english: false},
  {title: "The Thing", year: 1982, plot: "A shape-shifting alien infiltrates an isolated arctic research base, and the members of the expidition are picked off one by one. Kurt Russel has a luscious mane.", director: "John Carpentar", english: true},
  {title: "The Shining", year: 1980, plot: "A deranged author takes a job as a caretaker at a haunted hotel with his wife and young son. Violence ensues.", director: nil, english: true},
  {title: "The Fellowship of the Ring", year: 2001, plot: "A hobbit's discovery of a magical ring leads to an assembly of a heroic team made up of mythical Middle Earth inhabitants to destroy said ring to keep evil at bay. It's excellant.", director: "", english: true},
  {title: "Seven Samurai", year: 1957, plot: "Seven samurai protect a village.", director: "Akira Kurosawa", english: false},
  {title: "Escape from new york", year: 1981, plot: "science fiction movie", director: nil, english: nil}
])
User.create!([
  {name: "Vinny", email: "vs@gmail.com", password: "password", admin: false},
  {name: "Mack", email: "me@gmail.com", password: "password", admin: true},
  {name: "helen", email: "h@gmail.com", password: "password", admin: nil},
  {name: "lucy", email: "l@gmail.com", password: "password", admin: nil}
])
Genre.create!([
  {name: "Fantasy"},
  {name: "Thriller"},
  {name: "Horror"},
  {name: "Action"}
])
Actor.create!([
  {first_name: "Christopher", last_name: "Lee", known_for: "The Lord of the Rings", gender: nil, age: 72, movie_id: 3},
  {first_name: "Kurt", last_name: "Russel", known_for: "The Thing", gender: nil, age: 62, movie_id: 2},
  {first_name: "Mel", last_name: "Gibson", known_for: "Lethal Weapon", gender: "male", age: 64, movie_id: 2},
  {first_name: "Nathan", last_name: "Fillion", known_for: "Firefly", gender: nil, age: 42, movie_id: 5},
  {first_name: "Jun'ichi", last_name: "Okada", known_for: "Tales From Earthsea", gender: "male", age: 30, movie_id: 5},
  {first_name: "Jack", last_name: "Nickolson", known_for: "The Shining", gender: "male", age: 83, movie_id: 1}
])
MovieGenre.create!([
  {genre_id: 1, movie_id: 3},
  {genre_id: 1, movie_id: 5},
  {genre_id: 2, movie_id: 2},
  {genre_id: 3, movie_id: 1},
  {genre_id: 4, movie_id: 3},
  {genre_id: 3, movie_id: 2}
])
