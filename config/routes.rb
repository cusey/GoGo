Rails.application.routes.draw do

  resources :uploads
  get 'ruby_language/index'

  resources :todo_lists
  get 'concern_module/index'

  resources :tasks
  get 'component/index'
  
  put 'complete_task', to: 'component#complete_tasks', as: :complete_tasks  
  put 'complete_rating', to: 'component#complete_rating', as: :complete_rating  

  get 'article/index'
  get '/last/:id' => 'article#last'

  get 'cities/index'
  
  get 'users/index'

  root 'welcome#index'
  
  post 'welcome/new'

  get 'report/index'

  get 'activity/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
