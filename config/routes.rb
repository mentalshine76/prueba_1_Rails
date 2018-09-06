Rails.application.routes.draw do
  match 'todos/list', :controller => 'todos', :action => 'list', via: :get
  get 'todos', to: 'todos#index'
  get 'todos/new'
  post 'todos', to: 'todos#create', as: 'create'
  get 'todos/:id', to: 'todos#show', as: 'todo'
  get 'todos/:id/edit', to: 'todos#edit', as: 'edit'
  patch 'todos/:id', to: 'todos#update'
  delete 'todos/:id', to: 'todos#destroy'
  get 'todos/:id/complete', to: 'todos#complete', as: 'complete'
  get 'todos/list'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
