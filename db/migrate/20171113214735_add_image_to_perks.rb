class AddImageToPerks < ActiveRecord::Migration[5.1]
  def change
    add_attachment :perks, :image
  end
end
