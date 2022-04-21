class CreateCells < ActiveRecord::Migration[6.1]
  def change
    create_table :cells do |t|
      t.references :game, null: false, foreign_key: true
      t.string :type
      t.integer :position

      t.timestamps
    end
  end
end
