get '/pets' do
  @pets = Pet.order(:age)
  erb :'pets/index'
end

get '/pets/:id' do
  @pet = Pet.find(params[:id])
  erb :'pets/show'
end
