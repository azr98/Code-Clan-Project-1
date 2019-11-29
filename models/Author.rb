require_relative('../db/sql_runner')

class Author

  attr_accessor :name, :background, :num_of_books
  attr_reader :id


  def initialize(author_details)
    @id = author_details['id'].to_i if author_details['id']
    @name = author_details['name']
    @background = author_details['background']
    @num_of_books = author_details['num_of_books'].to_i
  end

  def save
    sql = "INSERT INTO authors (name,background,num_of_books) VALUES ($1,$2,$3)
    RETURNING id"
    values = [@name,@background,@num_of_books]
    results = SqlRunner.run(sql,values)
    @id = results.first()['id'].to_i
  end


  def self.delete_all
    sql = "DELETE FROM authors"
    SqlRunner.run(sql)
  end

end
