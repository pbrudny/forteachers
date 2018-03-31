class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :pages
      t.boolean :answer_key
      t.string :duration
      t.string :file
      t.belongs_to :category, foreign_key: true

      t.timestamps
    end
  end
end
