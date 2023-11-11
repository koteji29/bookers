Rails.application.routes.draw do
  # 一覧と新規投稿画面の併用をする
  #get 'books/new'
  # データの追加（保存）するためのルーティング
  #post 'books' => 'books#create'
  # 一覧表示
  #get 'books' => 'books#index'
  # 編集画面
  #get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  # 更新画面
  #patch 'books/:id' => 'books#update', as: 'update_book'
  # はじめの画面
  root to: 'homes#top'
  # 詳細画面
  #get 'books/:id' => 'books#show', as: 'book'
  # 削除機能
  #delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  # ルーティングを一括して自動生成してくれる
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
