class AddUserIdToQols < ActiveRecord::Migration[6.1]
  def change
    add_column :qols, :user_id, :integerger
  end
end
