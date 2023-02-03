class PostsController < ApplicationController
 before_action :authenticate_account!, except: [:index]
 before_action :ensure_account, only: [:show, :edit, :delete]
  def index
    @posts= Post.all
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
      render 'add' 
    end
  end

  def edit
  end

  def update
    @post=Post.find(params[:id])
    @post.account_id = current_account.id
    if @post.update(post_params)
      goback
    else
      render 'edit'
    end
  end 

  def delete
    @post.destroy
    goback
  end  

  private
  def post_params
    params.require(:post).permit(:name, :protein, :price, :memo)
  end

  def goback
    redirect_to '/posts'
  end

  def ensure_account
    @posts= current_account.posts
    @post= @posts.find_by(id: params[:id])
    goback unless @post
  end 


end
