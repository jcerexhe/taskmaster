Rails.application.routes.draw do
  resources :member_tasks
  root to: 'pages#status'

  resources :tasks
  resources :members

  get 'update_member_task/:id', to: 'tasks#update_member_task'
  patch 'update_member_task', to: 'tasks#assign_task'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
