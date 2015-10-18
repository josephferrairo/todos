Rails.application.routes.draw do
  root to: "todos#index"

  resources :todos, :only => [:new, :index, :create]

  resource :session, only: [:new, :create]

end
