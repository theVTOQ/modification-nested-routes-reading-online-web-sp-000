Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :authors, only: [:show, :index] do
    resources :posts, only: [:show, :index, :new]
  end

  resources :posts, only: [:create]
  #resources :posts, only: [:index, :create, :edit, :show]
end
