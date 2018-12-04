Rails.application.routes.draw do
  devise_for :users
root 'billboards#index'

resources :billboards

resources :artists do
  resources :songs
end

end
