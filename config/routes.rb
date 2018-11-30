Rails.application.routes.draw do
root 'billboards#index'

resources :billboards

resources :artists do
  resources :songs
end

end
