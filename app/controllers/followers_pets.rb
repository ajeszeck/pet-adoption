post '/pets/:id/followers_pets' do
  @pet = Pet.find(params[:id])
  follow = FollowersPet.new(follower_id: User.find(session[:user_id]).id, pet_id:
   params[:id])
  if follow.save
    redirect "/pets/#{@pet.id}"
  else
    @errors = follow.errors.full_messages
    erb :'/pets/show'
  end
end
