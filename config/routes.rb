Rails.application.routes.draw do
  get 'component/index'

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
