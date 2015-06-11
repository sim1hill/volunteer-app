Rails.application.routes.draw do
  root 'home#index'

  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

  resources :users
  resources :topics

  resources :skills

  resources :projects

  resources :events

  patch 'events/:id/leave', to: 'events#leave_event'

  get 'users/:id/email', to: 'users#email_volunteer'

  get 'users/:id/email-coordinator', to: 'users#email_volunteer'

  resources :skills_users

  get 'events/:id/marker', to: 'events#marker'

  get 'users/:id/email', to: 'users#email_volunteer'

end
