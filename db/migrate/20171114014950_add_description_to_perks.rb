class AddDescriptionToPerks < ActiveRecord::Migration[5.1]
  def change
    add_column :perks, :description, :string
  end
end
