Web2print::Application.routes.draw do
  devise_for :users

    scope module: 'frontend' do
      root to: 'home#index'
    end
    scope module: 'app' do
      resources :businesscards, only: [:index]
    end
end
