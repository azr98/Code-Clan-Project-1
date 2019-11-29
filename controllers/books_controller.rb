require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
also_reload( '../models/*' )

require_relative('../models/Author')
require_relative('../models/Book')


get '/book/:id' do
  @book = Book.find(params['id'])
  erb(:'books/show')
end
