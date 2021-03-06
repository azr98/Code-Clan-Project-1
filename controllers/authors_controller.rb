require( 'sinatra' )
require( 'sinatra/contrib/all' ) if development
require( 'pry-byebug' )


require_relative('../models/Author')
require_relative('../models/Book')


get '/authors' do
  @authors = Author.all
  erb(:'authors/index')
end

get '/authors/:id' do
  @author = Author.find(params['id'].to_i)

  erb(:'authors/show')
end

get '/author/new'do
  erb(:'authors/new')
end

post '/authors' do
  @author = Author.new(params)
  @author.save
  redirect('/authors')
end

get '/authors/:id/edit' do
  @author = Author.find(params[:id])
  erb(:'authors/edit')
end

post '/authors/:id/edit' do
  author = Author.new(params)
  author.update
  redirect('/authors')
end
