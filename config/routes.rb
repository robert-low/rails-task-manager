Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get 'tasks', to: 'tasks#index' # All tasks

  get 'tasks/new', to: 'tasks#new', as: :new_task # Create a new task, before show
  post 'tasks', to: 'tasks#create'

  get 'tasks/:id', to: 'tasks#show', as: :task # Show a task

  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task # Update a task
  patch 'tasks/:id', to: 'tasks#update'

  delete 'tasks/:id', to: 'tasks#destroy' # Delete a task
end
