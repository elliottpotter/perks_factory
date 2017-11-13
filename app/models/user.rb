# == Schema Information
#
# Table name: users
#
#  created_at              :datetime         not null
#  crypted_password        :string
#  email                   :string           not null
#  id                      :integer          not null, primary key
#  marketing_communication :boolean
#  salt                    :string
#  updated_at              :datetime         not null
#
# Indexes
#
#  index_users_on_email  (email) UNIQUE
#

class User < ActiveRecord::Base
  authenticates_with_sorcery!

  attr_accessor :password, :password_confirmation
  validates :email, presence: true
  validates_uniqueness_of :email
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create

  has_many :user_categories
  has_many :categories, through: :user_categories 
  accepts_nested_attributes_for :user_categories

end
