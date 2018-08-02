Rails.application.routes.draw do
	
	root 'users#home'
	
	get		'/login',	to: 'sessions#new'
	post	'/login',	to: 'sessions#create'
	delete	'/logout',	to: 'sessions#destroy'
	
	get		'/secret',	to: 'users#secret'
	
	resources :users
	
end