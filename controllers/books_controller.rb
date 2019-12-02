require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
also_reload( '../models/*' )

require_relative('../models/Author')
require_relative('../models/Book')


get '/books/:id' do

  @book = Book.find(params['id'].to_i)
  @author = @book.author
  erb(:'books/show')
end
