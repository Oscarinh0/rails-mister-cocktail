Rails.application.routes.draw do
	resources :cocktails do
		resources :doses, except: [ :destroy, :show]

## get    "cocktails",          to: "cocktails#index"

## get    "cocktails/new",      to: "cocktails#new"
## post   "cocktails",          to: "cocktails#create"

## get    "cocktails/:id",      to: "cocktails#show"
end
	resources :doses, only: [:destroy, :index]
end
