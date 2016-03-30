class AddColumnToBike < ActiveRecord::Migration
  def change
    add_column :bikes, :address, :string
  end
end
