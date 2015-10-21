class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :name
      t.integer :user_id
      t.integer :cover

      t.timestamps null: false
    end
  end
end
