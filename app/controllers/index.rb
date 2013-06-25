get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

get '/ajax' do
  @grandma = params[grandma]
  erb :ajax
end

post '/grandma' do
  case params[:user_input]
    when params[:user_input].upcase
      @grandma = 'NO, NOT SINCE 1983!'
      erb :ajax
    when "I love ya, Grandma, but I've got to go."
      @grandma = 'OK, GOODBYE!'        
      erb :ajax
    else
      @grandma = 'SORRY SONNY, SPEAK UP!'        
      erb :ajax
  end
end
