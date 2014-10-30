Rails.application.routes.draw do

  # homepage with all categories listed
  root 'home#index'

  # what this site is about
  get '/about' => 'home#about'

  # instructions on how to use site
  get '/help' => 'home#help'

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
  get '/tutorials/:id' => 'tutorials#show', as: :show_tutorial

  # # lets users create a tutorial with steps
  get '/users/:id/tutorials/new' => 'tutorials#new', as: :new_tutorial
  post '/tutorials' => 'tutorials#create'

  # page with the new step form
  get '/tutorials/:id/steps/new' => 'tutorials#new_step', as: :new_tutorial_step

  # this is where new steps post to
  post '/tutorials/:id/steps' => 'tutorials#create_step', as: :create_tutorial_step

  # lets users edit a tutorial
  put 'users/:id/tutorials/edit' => 'tutorials#update', as: :edit_tutorial
  put 'tutorials/:tutorial_id/steps/:step_id/edit' => 'tutorials#update_step', as: :edit_tutorial_step

  # lets you follow users
  post '/follow' => 'users#follow', as: :follow_user
  post '/unfollow' => 'users#unfollow', as: :unfollow_user

end
