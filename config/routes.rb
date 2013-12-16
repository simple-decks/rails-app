RailsApp::Application.routes.draw do

  resources :presentations

  root "presentations#index", :as => :index

  # get "presentations/:id/slides/:slide_id/edit" => "slides#edit", :as => :edit_slide

end
