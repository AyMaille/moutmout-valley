class AddTitleToCards < ActiveRecord::Migration[6.1]
  def change
    add_column :cards, :title, :string
  end
end
