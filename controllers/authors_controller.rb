require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
also_reload( '../models/*' )

require_relative('../models/Author')
require_relative('../models/Book')
