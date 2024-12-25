Rails.application.routes.draw do
  get 'bookers-leve|1.herokuapp.com' =>'homes#top'
  resources :books
  delete 'books/new' => 'books#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


