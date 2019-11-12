Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #READ ALL TASK
  get "/tasks", to: "tasks#index"
  #CREATE
  get "/tasks/new", to: "tasks#new", as: 'new_task'
  #CREATE - SAVE
  post "/tasks", to: "tasks#create"
  #READ ONE TASK
  get "/tasks/:id", to: "tasks#show", as: 'task'
  #UPDATE
  get "/tasks/:id/edit", to: "tasks#edit", as: 'task_edit'
  #UPDATE WITH SAVE
  patch "/tasks/:id", to: "tasks#update", as: 'task_update'
  #DESTROY
  delete "/tasks/:id", to: "tasks#destroy", as: 'task_delete'
end
