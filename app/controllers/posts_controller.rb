class PostsController < ApplicationController
 before_action :authenticate_account!

 def index
    @posts= Post.all.page(params[:page])
  end

  def show
    @post= Post.find(params[:id])
    @account= @post.account
  end

  def add
    @post=Post.new
  end

  def create
    @post=Post.new(post_params)
    @post.account_id = current_account.id
    if @post.save then
      goback
    else
      @msg= '商品名・プロテイン・価格・カテゴリは必須入力となっています。'
      render 'add' 
    end
  end

  def edit
    @post=Post.find(params[:id])
  end

  def update
    @post=Post.find(params[:id])
    @post.account_id = current_account.id
    if @post.update(post_params)
      goback
    else
      @msg= '商品名・プロテイン・価格は必須入力となっています。'
      render 'edit'
    end
  end 

  def delete
    @post.destroy
    goback
  end  

  private
  def post_params
    params.require(:post).permit(:name, :protein, :price, :category_id, :memo)
  end

  def goback
    redirect_to '/posts'
  end

end
