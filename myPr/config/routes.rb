Rails.application.routes.draw do
  
  resources :users do
	resources :images
  end

  get '*unmatched_route', to: 'errors#show', code: 404
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
