Rails.application.routes.draw do
  scope '(:locale)', locale: /#{I18n.available_locales.join("|")}/ do
    root 'front#index'
    get '/resume', to: 'front#resume'
    get '/portfolio', to: 'front#portfolio'
    get '/contact', to: 'front#contact'
    post '/send_email', to: 'front#send_email', as: :send_email
  end

  get '/:locale' => 'front#index'
  #match '*locale/*path', to: redirect("/#{I18n.default_locale}/#{path}"), via: :all
  #match '', to: redirect("/#{I18n.default_locale}"), via: :all
end
