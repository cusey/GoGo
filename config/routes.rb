Rails.application.routes.draw do
  root 'welcome#index'

  get 'report/index'

  get 'activity/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
