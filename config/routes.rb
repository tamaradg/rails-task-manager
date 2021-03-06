Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "tasks", to: "tasks#index"
  get "tasks/new", to: "tasks#new", as: :tasks_new
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  post 'tasks', to: 'tasks#create', as: :create_task
  patch "tasks/:id", to: "tasks#update"
  get 'tasks/:id', to: 'tasks#show', as: :task
  delete "tasks/:id", to: "tasks#destroy"
end
