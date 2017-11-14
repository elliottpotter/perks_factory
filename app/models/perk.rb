# == Schema Information
#
# Table name: perks
#
#  begins_at          :datetime
#  created_at         :datetime         not null
#  ends_at            :datetime
#  id                 :integer          not null, primary key
#  image_content_type :string
#  image_file_name    :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#  name               :string
#  residence_id       :integer
#  updated_at         :datetime         not null
#  vendor_id          :integer
#
# Indexes
#
#  index_perks_on_residence_id  (residence_id)
#  index_perks_on_vendor_id     (vendor_id)
#
# Foreign Keys
#
#  fk_rails_...  (residence_id => residences.id)
#  fk_rails_...  (vendor_id => vendors.id)
#

class Perk < ApplicationRecord
  belongs_to :vendor
  belongs_to :residence

  has_attached_file :image, styles: {
    perk:   '200x150>',
    square: '200x200#',
    medium: '300x300>',
  }

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
