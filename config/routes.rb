Rails.application.routes.draw do
	resources :events
	resources :services

	get 'authenticate/login'
	post 'authenticate/trylogin' => 'authenticate#trylogin'
	get 'authenticate/logout' => 'authenticate#logout'
	get 'authenticate/register' => 'authenticate#register'
	post 'authenticate/adddata' => 'authenticate#adddata'

	post 'events/list' => 'events#list'
	get 'events/view' => 'events#show'
	get 'events/edit' => 'events#edit'
	get 'events/new' => 'events#new'
	post 'events/edit' => 'events#edit'
	post 'events/delete' => 'events#delete'
	post 'events/update' => 'events#update'
	post 'events/attend' => 'events#attend'

	get 'services/view' => 'services#show'
	get 'services/edit' => 'services#edit'
	get 'services/new' => 'services#new'
	post 'services/display' => 'services#display'
	post 'services/edit' => 'services#edit'
	post 'services/delete' => 'services#delete'
	post 'services/modify' => 'services#modify'

	get 'messages/view' => 'messages#show'
	get 'messages/edit' => 'messages#edit'
	post 'messages/new' => 'messages#new'
	post 'messages/create' => 'messages#create'
	post 'messages/edit' => 'messages#edit'
	post 'messages/delete' => 'messages#delete'
	post 'messages/modify' => 'messages#modify'

	get 'home/index' => 'home#index'
	root 'home#index'
end
