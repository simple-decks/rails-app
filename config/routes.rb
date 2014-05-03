RailsApp::Application.routes.draw do

  root "presentations#index", :as => :index

  resources :presentations

end
