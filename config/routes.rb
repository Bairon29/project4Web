Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 resources :modelling3ds
 resources :reviews
   root "modelling3ds#landpage"
   get '/about', to:  'modelling3ds#about'
   get '/contact', to: 'modelling3ds#contact'
   get '/changeCharacter/:which', to: 'modelling3ds#changeCategory'
   get '/data', to: 'modelling3ds#getData'
   get '/popular', to: 'modelling3ds#getPopular'
end
