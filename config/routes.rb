Rails.application.routes.draw do
  # As a user, I can list tasks
  get 'tasks', to: 'tasks#index'
  # As a user, I can add a new task
  get 'tasks/new', to: 'tasks#new', as: :new_task
  # As a user, I can view the details of a task
  get 'tasks/:id', to: 'tasks#show', as: :task
end
