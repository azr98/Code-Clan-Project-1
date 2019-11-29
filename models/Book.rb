


class Book

  attr_reader :id
  attr_accessor :name, :description, :stock, :cost, :genre, :sell_price

  def initialize(book_details)
    @id = book_details['id'].to_i if book_details['id']
    @name = book_details['name']
    @description = book_details['description']
    @stock = book_details['stock'].to_i
    @cost = book_details['cost'].to_i
    @genre = book_details['genre']
    @sell_price = book_details['sell_price'].to_i
  end

  def save
    sql = "INSERT INTO books (name,description,stock,cost,genre,sell_price)
    VALUES ($1,$2,$3,$4,$5,$6) RETURNING id"
    values = [@name,@description,@stock,@cost,@genre,@sell_price]
    results = SqlRunner.run(sql,values)
    @id = results.first()['id'].to_i
  end

  def self.delete_all
    sql = "DELETE FROM books"
    SqlRunner.run(sql)
  end

  def self.all
    sql = "SELECT * FROM books"
    books = SqlRunner.run(sql)
    return books.map{|book| Book.new(book)}
  end

  def self.destroy(id)
    sql = "DELETE FROM books WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql,values)
  end

  def self.find(id)
    sql = "SELECT * FROM books
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run( sql, values ).first
    return Book.new( results )
  end

end
