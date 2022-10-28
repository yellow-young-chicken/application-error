Rails.application.routes.draw do
  resources :books,only: [:index, :create, :new, :edit, :show, :destroy]
  patch "/books/:id" => "books#update", as: "update"
  root to: 'homes#top'
end
