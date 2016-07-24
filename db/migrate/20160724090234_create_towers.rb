class CreateTowers < ActiveRecord::Migration
  def change
    create_table :towers do |t|
      t.string :name
      t.text :short_description
      t.string :position
      t.string :num_floor
      t.string :area
      t.string :floor_height
      t.string :parking
      t.string :evaluator
      t.string :air_condition
      t.string :open_time
      t.string :price
      t.string :map
      t.references :district, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
