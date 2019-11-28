

class Author

  attr_accessor :name, :background, :num_of_books
  attr_reader :id

  
  def initialize(author_details)
    @id = author_details['id'].to_i if author_details['id']
    @name = author_details['name']
    @background = author_details['background']
    @num_of_books = author_details['num_of_books'].to_i
  end


end
