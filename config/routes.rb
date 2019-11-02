# Rails.application.routes.draw do
#   get 'items' => 'items#index'
#   root 'mypages#index'
# end

Rails.application.routes.draw do

  
  devise_for :users
  root 'items#index'

  
  resources :signup do
    collection do
      get 'step1'
      get 'step2'
      get 'step3'
      get 'step4' # ここで、入力の全てが終了する
      get 'step5'
      get 'step6'
      get 'done' # 登録完了後のページ
    end
  end

  resources :posts

  get 'sells' => 'sells#index'
  get 'mypage' => 'mypages#index'
  get 'mypage/identification' =>'mypages#identification'


end
