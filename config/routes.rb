Venice::Application.routes.draw do
  get '/about' , to: 'pages#about', as:'about'
  get '/promotions', to: 'promotions#index', as:'promotion'
end
