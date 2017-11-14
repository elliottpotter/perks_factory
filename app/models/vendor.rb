# == Schema Information
#
# Table name: vendors
#
#  created_at         :datetime         not null
#  id                 :integer          not null, primary key
#  image_content_type :string
#  image_file_name    :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#  name               :string
#  updated_at         :datetime         not null
#

class Vendor < ApplicationRecord
  has_many :phone_numbers, as: :owner

  has_attached_file :image, styles: {
    perk:   '200x100>',
    modal:  '400x300>'
  }

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
