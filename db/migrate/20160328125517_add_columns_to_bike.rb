class AddColumnsToBike < ActiveRecord::Migration
  def change
    add_column :bikes, :description, :string
    add_column :bikes, :mileage, :string
  end
end
