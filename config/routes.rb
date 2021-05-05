Rails.application.routes.draw do
  resources :inputs do
    member do
      get '/inputs/new' => 'inputs#new'#登録ページ
      post '/inputs/new' => 'inputs#create'#回答を登録
      patch '/inputs/:id', to: 'inputs#create'
      put '/inputs/:id', to: 'inputs#create'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'inputs#new'
end
