Rails.application.routes.draw do
  root 'front#index'
  get '/resume', to: 'front#resume'
  get '/portfolio', to: 'front#portfolio'
  get '/contact', to: 'front#contact'
  post '/send_email', to: 'front#send_email', as: :send_email
end
