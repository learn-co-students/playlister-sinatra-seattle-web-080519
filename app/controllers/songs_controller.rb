class SongsController < ApplicationController

    get '/songs' do
        @songs = Song.all
    end

    def create
    end
end
