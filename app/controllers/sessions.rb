get '/sessions/new' do
  erb :'/sessions/new'
end
#
post '/sessions' do
  @user = User.find_by(email: params[:email])
  if @user && @user.password == params[:password]
    session[:user_id] = @user.id
    redirect '/pets'
  else
    @errors = ["Incorrect combination of username and password."]
    erb :'/sessions/new'
  end
end
#
delete '/sessions' do
  session.clear
  redirect '/pets'
end
