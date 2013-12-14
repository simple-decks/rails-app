RailsApp::Application.routes.draw do

  resources :presentations 
  # do 
  #   resources :slides
  # end

  root "presentations#show", :as => :index

  #get "presentations/:id/slides/:slide_id/edit" => "slides#edit", :as => :edit_slide

end
