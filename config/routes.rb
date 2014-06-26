Rails.application.routes.draw do
  root "numbers#index"

  post "/" => "numbers#index"
end
