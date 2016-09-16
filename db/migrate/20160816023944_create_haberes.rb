class CreateHaberes < ActiveRecord::Migration
  def change
    create_table :haberes do |t|
      t.integer :sueldo_base
      t.references :subcategorium, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
