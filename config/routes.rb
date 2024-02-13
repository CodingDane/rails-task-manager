Rails.application.routes.draw do
  # read all
  get '/tasks', to: 'tasks#index', as: :tasks

  # create new task
  get '/tasks/new', to: 'tasks#new', as: :new_task
  post '/tasks', to: 'tasks#create'

  # read one - needs to be after 'new' route
  get '/tasks/:id', to: 'tasks#show', as: :task

  # edit one
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'

  # delete one
  delete '/tasks/:id', to: 'tasks#destroy'
end
