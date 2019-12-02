require("pry-byebug")

require_relative('../models/Author')
require_relative('../models/Book')
require('pry')

Book.delete_all
Author.delete_all

mario = Author.new({
  'name' => 'Mario Puzo',
  'background' => 'Journalism and screenwriter',
  'num_of_books' => 6
  })

  mario.save



  benjamin = Author.new({
    'name' => 'Benjamin Graham',
    'background' => 'Finance professor and portfolio manager',
    'num_of_books' => 6
    })

  benjamin.save


godfather = Book.new({
  'name' => 'The Godfather',
  'description' => 'A Sicilian Mafia familie\'s struggle to regain power',
  'stock' => 20,
  'cost' => 5,
  'sell_price' => 8,
  'genre' => 'Crime thriller',
  'author_id' => mario.id
  })

  godfather.save

fools_die = Book.new({
  'name' => 'Fools Die',
  'description' => 'Three gamblers become friends at a casino and one mysteriously
  commits suicide after winning big. The story follows the two others as one works
  for the casino boss in the underworld and the other an aspiring author',
  'stock' => 25,
  'cost' => 4,
  'sell_price' => 7,
  'genre' => 'Crime',
  'author_id' => mario.id
  })

  fools_die.save

sicilian = Book.new({
  'name' => 'The Sicilian',
  'description' => 'Reminisces the life of Gulliano, a rebel hero, being smuggled
  out of Sicily by Micheal Corleone to the safety of the Godfather in America',
  'stock' => 25,
  'cost' => 4,
  'sell_price' => 7,
  'genre' => 'Crime',
  'author_id' => mario.id
  })

  sicilian.save

  investor = Book.new({
    'name' => 'The Intelligent Investor',
    'description' => 'Principles for value investing in stocks for the aggressive or
    defensive long term investor',
    'stock' => 100,
    'cost' => 3,
    'sell_price' => 5,
    'genre' => 'Investing',
    'author_id' => benjamin.id
    })

  investor.save





  binding.pry
  nil
