Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/hello_url" => "parameters#hello_method"
  get "/query_params_url" => "parameters#query_params_method"
end
