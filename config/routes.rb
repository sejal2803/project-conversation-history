Rails.application.routes.draw do

  root 'projects#index'

  resources :projects do
    resources :comments, only: [:create, :edit, :update, :destroy]
  end

  put 'projects/:id/update_status', to: 'projects#update_status', as: 'update_project_status'

end
