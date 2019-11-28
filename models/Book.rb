


class Book

  attr_reader :id
  attr_accessor :name, :description, :stock, :cost, :genre, :price

  def initialize(book_details)
    @id = book_details['id'].to_i if book_details['id'].to_i
    @name = book_details['name']
    @description = book_details['description']
    @stock = book_details['stock'].to_i
    @cost = book_details['cost'].to_i
    @genre = book_details['genre']
    @sell_price = book_details['sell_price'].to_i
  end




end
