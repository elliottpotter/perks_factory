# == Schema Information
#
# Table name: user_categories
#
#  category_id :integer
#  created_at  :datetime         not null
#  id          :integer          not null, primary key
#  updated_at  :datetime         not null
#  user_id     :integer
#
# Indexes
#
#  index_user_categories_on_category_id  (category_id)
#  index_user_categories_on_user_id      (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#  fk_rails_...  (user_id => users.id)
#

class UserCategory < ApplicationRecord
  belongs_to :user
  belongs_to :category
end
