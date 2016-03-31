class AddUserToBikes < ActiveRecord::Migration
  def change
    add_reference :bikes, :user, index: true, foreign_key: true
  end
end
