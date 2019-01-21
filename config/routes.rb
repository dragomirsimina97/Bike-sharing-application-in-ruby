Myrottenpotatoes::Application.routes.draw do
  resources :bikes
  root :to =>	redirect('/bikes')
end
