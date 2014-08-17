Venice::Application.routes.draw do
  get '/about' , to: 'pages#about', as:'about'
end
