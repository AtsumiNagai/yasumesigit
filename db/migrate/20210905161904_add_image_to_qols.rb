class AddImageToQols < ActiveRecord::Migration[6.1]
  def change
    add_column :qols, :image, :string
  end
end
