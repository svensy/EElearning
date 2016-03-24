class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.references :relationships, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
