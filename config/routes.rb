Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :motos do
    member do
      resources :bookings
    end
  end
  get "dashboard", to: "dashboards#show", as: :dashboard
  patch "bookings/:id/accept", to: "bookings#accept", as: :booking_accept
  patch "booking/:id/decline", to: "bookings#decline", as: :booking_decline
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
