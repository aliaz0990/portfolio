Rails.application.routes.draw do
  root 'front#index'
  get 'front/resumen'
  get 'front/portfolio'
  get 'front/contact'
  get 'front/feedback'
  get 'front/payments'
end
