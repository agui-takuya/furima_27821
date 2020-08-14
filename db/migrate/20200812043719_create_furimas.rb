class CreateFurimas < ActiveRecord::Migration[6.0]
  def change
    create_table :furimas do |t|
      # t.が型  :がカラム名↓
      t.string :name
      t.string :text
      t.text :image

      t.timestamps
    end
  end
end
