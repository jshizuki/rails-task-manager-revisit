Rails.application.routes.draw do
  # As a user, I can list tasks
  root to: 'tasks#index'

  # As a user, I can add a new task
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'

  # As a user, I can view the details of a task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # As a user, I can edit a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # As a user, I can remove a task
  delete 'tasks/:id', to: 'tasks#destroy'
end
