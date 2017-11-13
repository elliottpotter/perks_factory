# == Schema Information
#
# Table name: addresses
#
#  city       :string
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  latitude   :decimal(9, 6)
#  longitude  :decimal(9, 6)
#  owner_id   :integer
#  owner_type :string
#  state      :string
#  street1    :string
#  street2    :string
#  updated_at :datetime         not null
#  zip        :string
#

class Address < ApplicationRecord
  belongs_to :owner, polymorphic: true
  scope :for_owner, -> (klass, owner_id=nil) { where(owner_type: klass.to_s, owner_id: owner_id) }

  def vendor
    if owner_type != "Vendor"
      nil
    else
      owner
    end
  end

  def residence
    if owner_type != "Residence"
      nil
    else
      owner
    end
  end
end
