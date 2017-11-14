class RenameNameToTitle < ActiveRecord::Migration[5.1]
  def change
    rename_column :perks, :name, :title
  end
end
