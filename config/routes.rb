Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :queue_jobs, only: [:create, :index]
    end
  end
end
