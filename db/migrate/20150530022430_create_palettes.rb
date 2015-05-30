class CreatePalettes < ActiveRecord::Migration
  def change
    create_table :palettes do |t|
      t.string :name
      t.string :style
      t.text :description
      t.timestamps
    end
  end
end
