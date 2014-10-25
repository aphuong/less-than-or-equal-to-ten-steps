Rails.application.routes.draw do

  # homepage with all categories listed
  root 'home#index'

  # what this site is about
  get '/about' => 'home#about'

  # lets users sign in or join site
  post '/users' => 'users#create'
  post '/sessions' => 'sessions#create'

  # lets users sign out
  delete '/logout', to: 'sessions#destroy'

  # shows user's profile page (see all their tutorials)
  get '/users/:id' => 'users#show', as: :user

  # lets users' edit profile
  # get '/users/:id/edit' => 'users#edit'

  # shows all tutorials belonging to a specific category
  get '/categories/:id/tutorials' => 'tutorials#categorized', as: :categorized_tutorials

  # shows all tutorials
  get '/tutorials' => 'tutorials#index'
  get '/tutorials/search' => 'tutorials#search'

  # shows 1 tutorial
  get '/tutorials/:id' => 'tutorials#show', as: :show_tutorials

  # # lets users create a tutorial with steps
  get '/users/:id/tutorials/new' => 'tutorials#new', as: :new_tutorial
  post '/tutorials' => 'tutorials#create'

  # page with the new step form
  get '/tutorials/:id/steps/new' => 'tutorials#new_step', as: :new_tutorial_step

  # this is where new steps post to
  post '/tutorials/:id/steps' => 'tutorials#create_step', as: :create_tutorial_step

  # # lets users edit a tutorial
  # get 'users/:id/tutorials/edit' => 'tutorials#edit'



end
