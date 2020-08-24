# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :nickname, null: false
      t.string :email,              null: false, default: ''
      t.string :encrypted_password, null: false, default: ''
      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at
      ## Rememberable
      t.datetime :remember_created_at

      # #自身での追加項目プロフィール
      t.string :first_name, null: false
      t.string :family_name, null: false
      t.string :first_name_kana, null: false
      t.string :family_name_kana, null: false
      t.date :birth_day, null: false
      t.text :introduction
      t.string :avatar
      t.timestamps null: false
    end
    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true

  end
end
