require 'rack-flash'
require 'sinatra/base'
class ArtistsController < ApplicationController
  enable :sessions
  use Rack::Flash

  get '/artists' do
    @artists = Artist.all
    erb :'artists/index'
  end

  get '/artists/:slug' do
    @artist = Artist.find_by_slug(params[:slug])
    erb :'artists/show'
  end
  
end
