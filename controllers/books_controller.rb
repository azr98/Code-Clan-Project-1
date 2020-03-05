require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require('pry')
also_reload( '../models/*' )

require_relative('../models/Author')
require_relative('../models/Book')

get '/books' do
  @books = Book.all
  erb(:index)
end


get '/books/:id' do

  @book = Book.find(params['id'].to_i)
  @author = @book.author
  erb(:'books/show')
end

get '/book/new'do
  @authors = Author.all
  erb(:'books/new')
end

post '/books' do
  @book = Book.new(params)
  @book.save
  redirect('/books')
end

post '/book/:id/delete' do
  Book.destroy(params[:id])
  redirect('/books')
end

get '/book/:id/edit' do
  @book = Book.find(params[:id])
  @authors = Author.all
  erb(:'books/edit')
end

post '/books/:id/edit' do
  book = Book.new(params)
  book.update
  redirect('/books')
end
