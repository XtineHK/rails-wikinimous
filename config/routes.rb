Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

# read all articles
get "articles", to: "articles#index"

# create an article : 2 steps first to get the form [new(get)] + then to add it [create(post)]
get "articles/new", to: "articles#new", as: "new_article"
post "articles", to: "articles#create"

# read one article
get "articles/:id", to: "articles#show", as: "article"

# update an article
get "articles/:id/edit", to: "articles#edit", as: "edit_article"
patch "articles/:id", to: "articles#update"

# delete an article
delete "articles/:id", to: "articles#destroy"












end
