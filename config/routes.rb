Rails.application.routes.draw do
  root "docs#show"

  resources :docs, only: [:index]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope '(:api)', as: :api, module: :api, constraints: { api: /api/ }, defaults: { format: 'json' } do
    namespace :v1 do
      resources :badges, only: %w[index show]
    end
  end
end
