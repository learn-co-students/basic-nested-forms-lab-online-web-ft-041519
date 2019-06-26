Rails.application.routes.draw do
  resource :recipes, :ingredients 
end
