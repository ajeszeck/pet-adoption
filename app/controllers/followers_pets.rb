post '/pets/:id/followers_pets' do
  @pet = Pet.find(params[:id])
  follow = FollowersPet.new(follower_id: User.find(session[:user_id]), pet_id: params[:id])
  # @pet.followers << User.find(session[:user_id])
  if follow.save
    redirect "/pets/#{@pet.id}"
  else
    p "*" * 200
    @errors = follow.errors.full_messages
    p @errors
    erb :'/pets/show'
  end
end
