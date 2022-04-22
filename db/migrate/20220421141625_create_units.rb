class CreateUnits < ActiveRecord::Migration[6.1]
  def change
    create_table :units do |t|
      t.references :player, null: false, foreign_key: true
      t.references :cell, null: false, foreign_key: true
      t.string :category

      t.timestamps
    end
  end
end
