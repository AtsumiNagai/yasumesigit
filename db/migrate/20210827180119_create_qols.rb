class CreateQols < ActiveRecord::Migration[6.1]
  def change
    create_table :qols do |t|
      t.string :food
      t.string :cost
      t.string :coupon
      t.string :place
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
