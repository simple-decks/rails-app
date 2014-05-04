RailsApp::Application.routes.draw do

  #root "slides#new"

  # root "presentations#index", :as => :index

  #get "presentations/:token_url/:presentation_title", to: 'presentations#show'

  resources :presentations do
    resources :slides
  end

end
