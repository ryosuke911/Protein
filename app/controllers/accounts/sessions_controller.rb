class Accounts::SessionsController < Devise::SessionsController
  def guest_sign_in
    account = Account.guest
    sign_in account
    redirect_to posts_path
  end
end