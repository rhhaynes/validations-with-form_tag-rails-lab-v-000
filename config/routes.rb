Rails.application.routes.draw do
  resources :authors, :posts, only: [:new, :create, :show, :edit, :update]
end
