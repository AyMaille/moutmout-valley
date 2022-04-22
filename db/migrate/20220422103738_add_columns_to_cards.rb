class AddColumnsToCards < ActiveRecord::Migration[6.1]
  def change
    add_column :cards, :description, :text
    add_column :cards, :drawable, :boolean, default: true
    add_column :cards, :discard, :boolean, default: false
  end
end
