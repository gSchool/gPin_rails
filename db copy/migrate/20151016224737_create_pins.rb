class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :url
      t.string :photo
      t.integer :user_id
      t.integer :board_id
      t.text :comment

      t.timestamps null: false
    end
  end
end
