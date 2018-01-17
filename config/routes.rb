Rails.application.routes.draw do

   root                 'static_pages#home'

   get 'contact'     => 'static_pages#contact'

   get 'projects'    => 'static_pages#projects'

   get 'team'        => 'static_pages#team'

   get 'signup'      => 'users#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
