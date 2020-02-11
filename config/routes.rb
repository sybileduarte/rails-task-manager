Rails.application.routes.draw do
  get 'tasks/new',             to: 'tasks#new', as: :new_task
  get 'tasks',                 to: 'tasks#index'
  get 'tasks/:id',             to: 'tasks#show', as: :task
  post 'tasks',                to: 'tasks#create'
  get '/tasks/:id/edit',       to: 'tasks#edit', as: :task_edit
  patch 'tasks/:id',           to: 'tasks#update'
  delete '/tasks/:id/destroy', to: 'tasks#destroy', as: :task_destroy
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
