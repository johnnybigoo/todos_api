Rails.application.routes.draw do
  resources :todos do
    resources :items
		post 'auth/login', to: 'authentication#authenticate'
		post 'signup', to: 'users#create'
  end
end

