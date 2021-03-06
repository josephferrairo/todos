Rails.application.routes.draw do
  root to: "todos#index"

  resources :todos, :only => [:new, :index, :create] do
    resource :completion, only: [:create, :destroy]
  end

  resource :session, only: [:new, :create]

end
