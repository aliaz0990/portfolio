Rails.application.routes.draw do
  scope '(:locale)', locale: /#{I18n.available_locales.join("|")}/ do
    get '/resume', to: 'front#resume'
    get '/portfolio', to: 'front#portfolio'
    get '/contact', to: 'front#contact'
    post '/send_email', to: 'front#send_email', as: :send_email
    get '/download', to: 'front#download_pdf'
    root to: 'front#index'
  end
end
