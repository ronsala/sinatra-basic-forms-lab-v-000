require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/' do
    @puppy = Puppy.new(params[:puppy][:name], params[:puppy][:breed], params[:puppy][:age])

    erb :display_puppy
  end

end
