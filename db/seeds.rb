require("pry-byebug")

require_relative('../models/Author')
require_relative('../models/Book')


Author.delete_all
Book.delete_all

godfather = Book.new({
  'name' => 'The Godfather',
  'description' => 'Sicilian Mafia families struggle to regain power',
  'stock' => 20,
  'cost' => 5,
  'sell_price' => 8,
  'genre' => 'Crime thriller'
  })

  godfather.save

fools_die = Book.new({
  'name' => 'Fools Die',
  'description' => 'Four gamblers become friends at a casino and one mysteriously
  commits suicide after winning big. The story follows the two others as one works
  for the casino boss in the underworld and the other an aspiring author',
  'stock' => 25,
  'cost' => 4,
  'sell_price' => 7,
  'genre' => 'Crime'
  })

  fools_die.save

  sicilian = Book.new({
    'name' => 'Fools Die',
    'description' => 'Reminisces the life of Guliano, a rebel war hero, being smuggled
    out of Sicily by Micheal Corleone to the safety of the Godfather in America',
    'stock' => 25,
    'cost' => 4,
    'sell_price' => 7,
    'genre' => 'Crime'
    })

    sicilian.save


  mario = Author.new({
    'name' => 'Mario Puzo',
    'background' => 'Journalism and screenwriter',
    'num_of_books' => 6
    })

    mario.save

    investor = Book.new({
      'name' => 'The Intelligent Investor',
      'description' => 'Principles for value investing for the aggressive or
      defensive long term investor',
      'stock' => 100,
      'cost' => 3,
      'sell_price' => 5,
      'genre' => 'Investing'
      })

    investor.save

    benjamin = Author.new({
      'name' => 'Benjamin Graham',
      'background' => 'Finance professor and portfolio manager',
      'num_of_books' => 6
      })

    benjamin.save



  binding.pry
  nil