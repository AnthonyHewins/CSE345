Rails.application.routes.draw do
	resources :events
	resources :services

	get 'authenticate/login'
	post 'authenticate/trylogin' => 'authenticate#trylogin'
	get 'authenticate/logout' => 'authenticate#logout'
	get 'authenticate/register' => 'authenticate#register'
	post 'authenticate/adddata' => 'authenticate#adddata'

	get 'events/view' => 'events#show'
	get 'events/edit' => 'events#edit'
	get 'events/new' => 'events#new'
	get 'events/edit' => 'events#edit'

	get 'services/view' => 'services#show'
	get 'services/edit' => 'services#edit'
	get 'services/new' => 'services#new'
	post 'services/edit' => 'services#edit'
	post 'services/delete' => 'services#delete'
	post 'services/modify' => 'services#modify'

	get 'home/index' => 'home#index'
	root 'home#index'
end
