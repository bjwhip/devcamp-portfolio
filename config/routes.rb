Rails.application.routes.draw do
  resources :topics, only: [:index, :show]

  resources :comments
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :portfolios, except: [:show] do
    put :sort, on: :collection
  end
  get 'portfolio/angular', to: 'portfolios#angular', as: 'portfolio_angular'
  get 'portfolio/ruby', to: 'portfolios#ruby_on_rails', as: 'portfolio_ruby_on_rails'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'slcc-news', to: 'pages#slcc_news'
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  mount ActionCable.server => '/cable'

  root to: 'pages#home'
end
