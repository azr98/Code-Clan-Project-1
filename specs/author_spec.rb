require('minitest/autorun')
require('minitest/reporters')
require_relative('../models/Author')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestAuthor < MiniTest::Test

  def test_create_author
    author1 = Author.new({
      'name' => 'Mario Puzo',
      'background' => 'Journalism to fiction writer',
      'num_of_books'=> 7,
      })
      assert_equal('Mario Puzo',author1.name)
  end

end
