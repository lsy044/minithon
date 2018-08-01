Rails.application.routes.draw do
  resources :vote_logs
  get 'home/index'
  root 'vote_logs#index'

  post 'vote_logs/checkDouble' => 'vote_logs#checkDouble'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
