class AddUserIdToShoppingCart < ActiveRecord::Migration[6.1]
  def change
    add_column :shopping_carts, :user_id, :bigint
  end
end