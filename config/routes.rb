Rails.application.routes.draw do

  devise_for :users
	get'welcome/index'
   #root'articles#index'
  root'blogs#index'

	resources :articles
    resources :blogs
	
   root'articles#index'
  
 
  
  get'contactus' =>'home#contactus'
  get'aboutus' =>'home#aboutus'
  get'home' =>'home#home'

resources :articles do
  resources :comments
end

post '/create_blog' => 'blogs#create_blog'

get '/show_blogs' => 'blogs#arvind'

end

