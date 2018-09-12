Rails.application.routes.draw do
  root 'front#index'
  get '/resume', to: 'front#resume'
  get '/portfolio', to: 'front#portfolio'
  get '/contact', to: 'front#contact'
  get '/feedback', to: 'front#feedback'
  get '/payments', to: 'front#payments'
end
