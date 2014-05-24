RailsApp::Application.routes.draw do
  root "anonymous_slides#new"

  # match "*path" => "anonymous_slides#new", via: [:get, :post]

  get ":url_token/:url_title/edit", :as => :edit_token_url, to: 'presentations#edit'
  get ":url_token/:url_title", :as => :token_url, to: 'presentations#show'

  resources :presentations do
    resources :slides
  end



end
