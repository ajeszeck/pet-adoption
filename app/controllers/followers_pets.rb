post '/pets/:id/followers_pets' do
  @pet = Pet.find(params[:id])
  @pet.followers << User.find(session[:user_id])
  erb :'/pets/show'
end
