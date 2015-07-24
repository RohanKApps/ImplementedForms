Rails.application.routes.draw do
    get '/new' => 'application#new'
    get '/create_image' => 'application#create'
end
