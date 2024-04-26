Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'movies#index'

  # Com o comando 'resources 'movies' o rails já cria todos os Routes esperados de movies
  # dessa forma teremos que definir arquivos controllers e views para essas routes
  # (não são todos os controller que vão ter uma view mas o padrão é que tenham)

  resources 'movies'
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
