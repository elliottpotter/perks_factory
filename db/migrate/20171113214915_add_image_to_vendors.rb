class AddImageToVendors < ActiveRecord::Migration[5.1]
  def change
    add_attachment :vendors, :image
  end
end
