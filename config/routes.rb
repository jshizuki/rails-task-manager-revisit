Rails.application.routes.draw do
  # As a user, I can list tasks
  root to: 'tmanager_tasks#index'

  # As a user, I can add a new task
  get 'tmanager_tasks/new', to: 'tmanager_tasks#new', as: :new_tmanager_task
  post 'tmanager_tasks', to: 'tmanager_tasks#create'

  # As a user, I can view the details of a task
  get 'tmanager_tasks/:id', to: 'tmanager_tasks#show', as: :tmanager_task

  # As a user, I can edit a task
  get 'tmanager_tasks/:id/edit', to: 'tmanager_tasks#edit', as: :edit_tmanager_task
  patch 'tmanager_tasks/:id', to: 'tmanager_tasks#update'

  # As a user, I can remove a task
  delete 'tmanager_tasks/:id', to: 'tmanager_tasks#destroy'
end
