class AccountsController < ApplicationController
 before_action :authenticate_account!
  def index
    @accounts= Account.all
  end

  def show
    @account= Account.find(params[:id])
    @posts= @account.posts
  end
end
