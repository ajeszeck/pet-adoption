get '/pets' do
  @pets = Pet.all
  erb :'pets/index'
end
