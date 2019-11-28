require('minitest/autorun')
require('minitest/reporters')
require_relative('../models/Book')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestBook < MiniTest::Test

  def test_create_book
    book1 = Book.new({
      'name' => 'The Godfather',
      'description' => '50s New York Sicilian mafia families struggle for power',
      'stock' => '20',
      'cost' => '4',
      'price' => '8',
      'genre' => 'Crime thriller'
      })

      assert_equal('The Godfather',book1.name)
  end


end
