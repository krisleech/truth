Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :admin do
    resources :questions do
      resources :answers
    end
  end

  resources :questions, defaults: { format: 'json' }
end
