class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.boolean :owner
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
