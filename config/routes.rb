Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'parsing', to: 'pages#parse'
  root to: "pages#parse"
end
