Rails.application.routes.draw do
  # List all tasks
  get 'tasks', to: 'tasks#index'
  # View details of each task
  get 'tasks/:id', to: 'tasks#show', as: :task
end
