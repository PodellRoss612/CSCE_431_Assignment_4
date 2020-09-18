Rails.application.routes.draw do

	
	#root route
	root 'books#index'
	#root 'book_collection#home_page'

	resources :books do
		member do
			get :delete
		end
	end

	get 'book_collection/home_page'
	get 'book_collection/see_collection'
	get 'book_collection/enter_book'
	# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
