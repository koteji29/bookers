class BooksController < ApplicationController
  def new
  end

  # 投稿を保存するためのcreateアクション生成
  def create
    # フォームに記述した文字やデータを受け取る＆受け取ったデータを元に新規登録するためのインスタンスを作成する
    # book = Book.new(book_params)
    #インスタンスにsaveメソッドを使いデータベースに保存する
    # book.save
    #画面遷移リダイレクトを行う
    #redirect_to book_path(book.id)
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book was successfully updated."
      redirect_to book_path(@book.id)
    else
      @books = Book.all
      render :index
    end
  end

  def index
    #保存したデータを一覧画面に表示す
    # Viewへ渡すためのインスタンス変数に空のModelオブジェクトを生成する
    @books = Book.all
    @book = Book.new
  end
  # 詳細画面表示
  def show
    @book = Book.find(params[:id])
  end
  # 編集フォーム
  def edit
    @book = Book.find(params[:id])
  end
  # 更新フォーム
  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:notice] = "Book was successfully updated."
      redirect_to book_path(@book.id)
    else
      render :edit
    end
  end
  # 削除
  def destroy
    book = Book.find(params[:id])  # データ（レコード）を1件取得
    book.destroy  # データ（レコード）を削除
    redirect_to '/books'
  end

  #ストロングパラメータ
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
