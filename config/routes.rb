RailsApp::Application.routes.draw do

  root "anonymous_slides#new"

  resources :anonymous_slides

  
  # root "presentations#index", :as => :index

  get ":url_token/:presentation_title", :as => :token_url, to: 'presentations#show'

  resources :presentations do
    resources :slides
  end

end
