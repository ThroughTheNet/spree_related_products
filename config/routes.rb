Rails.application.routes.draw do

  namespace :admin do

    resources :relation_types
    resources :assemblies do
      get :related, :on => :member
      resources :relations
    end

  end

end
