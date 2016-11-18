Rails.application.routes.draw do
  resources :items
  constraints subdomain: 'api' do
    scope module: 'api' do
      namespace :v1 do
        resources :users
      end
    end
  end
end
