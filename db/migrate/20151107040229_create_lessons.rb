class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.integer :result
      t.references :user, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
