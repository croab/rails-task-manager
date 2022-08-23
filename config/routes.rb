Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/tasks', to: 'tasks#index', as: :tasks
  get '/tasks/new', to: 'tasks#new', as: :new_task
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  get '/tasks/:id', to: 'tasks#show', as: :task
  patch '/tasks/:id', to: 'tasks#update', as: :update_task
  post '/tasks', to: 'tasks#create'
  delete '/tasks/:id', to: 'tasks#destroy', as: :destroy_task
  # resources :tasks, only: [:index, :new, :edit, :show, :update, :create, :destroy]
end
