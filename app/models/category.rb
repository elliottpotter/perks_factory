# == Schema Information
#
# Table name: categories
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  name       :string
#  status     :string
#  updated_at :datetime         not null
#

class Category < ApplicationRecord
  has_many :user_categories
end
