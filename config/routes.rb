Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'hi/index'
  #root page (no slash)-> home controller/ index action
  root 'home#index'
  get '/lotto'=>'home#lotto'#처음에 /lotto로 url 요청이 들어오면 home이라는 컨트롤러에서 lotto액션으로 가라는 코드
  get '/index' =>'home#index'
  get '/welcome/:name'=>'home#welcome'

end
