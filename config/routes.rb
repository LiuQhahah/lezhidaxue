Rails.application.routes.draw do
  #以root router格式
  root 'demo#print'
  #默认以simple router格式
  get 'demo/index'
  get 'demo/print'
  #match "demo/print" , :to => "demo#print" , :via =>:get

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
