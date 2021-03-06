require_relative('../db/sql_runner')
require("pry-byebug")

class Author

  attr_accessor :name, :background, :num_of_books, :id



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

  def self.all
    sql = "SELECT * FROM authors"
    authors = SqlRunner.run(sql)
    return authors.map{|author| Author.new(author)}
  end

  def self.destroy(id)
    sql = "DELETE FROM authors WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql,values)
  end

  def self.find(id)
    sql = "SELECT * FROM authors
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run( sql, values ).first
    return Author.new( results )
  end

  def update()
    sql = "UPDATE authors SET (name,background,num_of_books) = ($1,$2,$3) WHERE id = $4 "
    values = [@name,@background,@num_of_books,@id]
    SqlRunner.run(sql,values)
  end


end
