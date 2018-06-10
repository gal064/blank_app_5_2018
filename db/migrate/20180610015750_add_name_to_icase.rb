class AddNameToIcase < ActiveRecord::Migration[5.1]
  def change
    add_column :icases, :name, :string
  end
end
