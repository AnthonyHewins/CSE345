Rails.application.routes.draw do
	resources :events
	get 'events/view' => 'events#show'
	get 'events/edit' => 'events#edit'
	get 'home/index' => 'home#index'
	get 'events/new' => 'events#new'
	get 'events/edit' => 'events#edit'
	root 'home#index'
end
