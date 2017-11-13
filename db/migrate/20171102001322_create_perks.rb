class CreatePerks < ActiveRecord::Migration[5.1]
  def change
    create_table :perks do |t|
      t.string :name
      t.references :vendor, foreign_key: true
      t.references :residence, foreign_key: true
      t.timestamp :begins_at
      t.timestamp :ends_at

      t.timestamps
    end
  end
end
