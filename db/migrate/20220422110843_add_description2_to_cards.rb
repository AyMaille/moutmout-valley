class AddDescription2ToCards < ActiveRecord::Migration[6.1]
  def change
    add_column :cards, :description2, :text
  end
end
