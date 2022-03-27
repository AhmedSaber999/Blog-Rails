# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Category < ApplicationRecord
  validates :name, presence: true, length: {minimum: 5, maximum: 30}
  validates_uniqueness_of :name
  has_many :articale_categories
  has_many :articales, through: :articale_categories
end
