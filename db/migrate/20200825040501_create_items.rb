class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :introuducion
      t.integer :price
      t.references :brand, foreign_key: true
      t.references :item_condition, foreign_key:true
      t.references :postage_payer
      t.integer :prefecture_code
      t.references :size, foreign_key:true
      t.references :preparation_day, foreign_key:true
      t.references :postage_type, foreign_key:true
      t.references :item_img, foreign_key:true
      t.references :category, soreign_key:true
      t.enum :trading_status
      t.references :seller, foreign_key:true
      t.references :buyer, foreign_key:true
      t.timestamps
    end
  end
end
