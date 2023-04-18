Rails.application.routes.draw do

  root 'projects#index'

  resources :projects 

  put 'projects/:id/update_status', to: 'projects#update_status', as: 'update_project_status'

end
