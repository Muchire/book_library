Rails.application.routes.draw do
  resources :books do
    member do
      post 'borrow', to: 'books#borrow'
      post 'return_book', to: 'books#return_book'
    end
  end

  resources :lending_histories, only: [:index, :show]

  root 'books#index'
end
