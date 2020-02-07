Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth', controllers: {
    registrations: 'auth/registrations'
  }
  resources :tweets, only: [:index, :show, :create], defaults: { format: 'json' }
end
