require( 'sinatra' )
require( 'sinatra/contrib/all' )

require_relative('controllers/authors_controller')
require_relative('controllers/books_controller')

require_relative('models/Author')
require_relative('models/Book')

get '/' do
  erb(:index)
end
