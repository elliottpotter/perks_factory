# == Schema Information
#
# Table name: vendors
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  name       :string
#  updated_at :datetime         not null
#

class Vendor < ApplicationRecord
  has_many :phone_numbers, as: :owner
end
