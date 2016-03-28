class AddPhotoToBike < ActiveRecord::Migration
  def change
    add_column :bikes, :photo, :string
  end
end
