# File created 11/15/2022 by Samuel Dominguez: generated using `rails new` command
# File edited 11/25/2022 by Ankit Patel: root is now homepage
# File edited 11/23/2022 by Brendan Gass: Added route for locations index
# File edited 11/23/2022 by Brendan Gass: Changed locations to resource
# File edited 11/27/2022 by Samuel Dominguez: Added route to view profile
# File edited 11/28/2022 by Brendan Gass: Added locations#filters route
# File edited 12/01/2022 by Brendan Gass: Added devise registrations controller
# File edited 12/2/2022 by Tyler Mox: Added reviews

Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'users/registrations' }

  get 'profile/view_profile'
  get 'welcome/homepage'
  get 'locations/filters'

  resources :locations do
    resources :reviews
  end

  resources :locations, :only => [:index, :show]
  root to: 'welcome#homepage'
end
