Rails.application.routes.draw do
  get 'homes/open'

  get 'homes/index'

  get 'homes/close'

  root 'homes#index'
end
