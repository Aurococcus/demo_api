Rails.application.routes.draw do
  scope :api do
    scope :v1 do
      resources :articles
      resources :authors
    end
  end
end
