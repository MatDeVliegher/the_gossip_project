Rails.application.routes.draw do

  root to: 'static_pages#home'
  get 'welcome/:first_name', to: 'welcome#show', as: 'secret_page'
  get 'static_pages/home', to: 'static_pages#home', as: 'home'
  get 'static_pages/team', to: 'static_pages#team', as: 'team'
  get 'static_pages/contact', to: 'static_pages#contact', as: 'contact'
  get 'dynamic_pages/gossip/:gossip_id', to: 'dynamic_pages#gossip', as: 'gossip'
  get 'dynamic_pages/user/:user_id', to: 'dynamic_pages#user', as: 'user'
end
