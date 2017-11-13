# == Schema Information
#
# Table name: residences
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  name       :string
#  updated_at :datetime         not null
#

class Residence < ApplicationRecord
  has_many :phone_numbers, as: :owner
end
