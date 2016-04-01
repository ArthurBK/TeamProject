class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.string :model
      t.integer :rating
      t.string :year
      t.string :displacement
      t.string :brand
      t.string :bike_type
      t.integer :rate

      t.timestamps null: false
    end
  end
end
