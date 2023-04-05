Rails.application.routes.draw do
  resources :money_expenses
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'money_expenses#index'

end
