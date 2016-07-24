class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :url
      t.text :content
      t.references :post, index: true, foreign_key: true
      t.references :tower, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
