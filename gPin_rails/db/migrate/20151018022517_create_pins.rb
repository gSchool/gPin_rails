class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.text :url
      t.text :comment
      t.string :image

      t.timestamps null: false
    end
  end
end
