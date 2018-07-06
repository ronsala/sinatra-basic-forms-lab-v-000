require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/' do
    # binding.pry
    # @puppy = Puppy.new(params[:name])
    # @puppy = Puppy.new(Arya, shorthair, 3) #(name, breed, age) #(params[:name])
    @puppy = Puppy.new(params[:puppy][:name], params[:puppy][:breed], params[:puppy][:age])
    erb :display_puppy
  end

end
