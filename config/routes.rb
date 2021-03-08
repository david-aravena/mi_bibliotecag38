Rails.application.routes.draw do
  root 'books#index'
  get 'books/new', to: 'books#new'
  post 'books/create', to: 'books#create', as: 'c_book'

  get 'loans/new', to: 'loans#new'
  post 'loans/create', to: 'loans#create', as: 'c_loan'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
