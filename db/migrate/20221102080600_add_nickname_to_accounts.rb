class AddNicknameToAccounts < ActiveRecord::Migration[6.1]
  def change
    add_column :accounts, :nickname, :string
  end
end
