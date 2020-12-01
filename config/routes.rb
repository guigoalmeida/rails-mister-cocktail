Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # root to: 'cocktails@index'
  #   get '/cocktails', to: 'cocktails#index'
  #   get '/cocktails/new', to: 'cocktails#new', as: :new_cocktail
  #   post '/cocktails', to: 'cocktails#create'
  #   get '/cocktails/:id/doses/new', to: 'doses#new', as: :new_dose
  #   post '/cocktails/:id/doses', to: 'doses#create'
  #   get '/cocktails/:id', to: 'cocktails#show', as: :cocktail
  # end

  root to: 'cocktails#index'
  resources :cocktails, only: %i[index show new create] do
    resources :doses, only: %i[new create]
    resources :reviews, only: [:create]
  end
  resources :doses, only: [:destroy]
end
