Rails.application.routes.draw do
  
  get "/stocks" => "stocks#index"
  get "/stocks/:symbol" => "stocks#show"
end
