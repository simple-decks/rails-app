RailsApp::Application.routes.draw do

  root "anonymous_slides#new"

  resources :anonymous_slides

  
  # root "presentations#index", :as => :index

  #get "presentations/:token_url/:presentation_title", to: 'presentations#show'

  resources :presentations do
    resources :slides
  end

end
