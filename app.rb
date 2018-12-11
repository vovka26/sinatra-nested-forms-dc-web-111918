require './environment'

module FormsLab
  class App < Sinatra::Base
    set :views, "./views/pirates"
    get "/" do
      erb :root
    end

    get "/new" do
      erb :new
    end

    post "/pirates" do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |parameters|
        Ship.new(parameters)
      end

      @ships = Ship.all

      erb :show
    end




  end
end
