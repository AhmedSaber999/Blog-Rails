# == Schema Information
#
# Table name: articales
#
#  id          :integer          not null, primary key
#  description :text
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

class Articale < ApplicationRecord
  has_many :articale_categories
  has_many :categories, through: :articale_categories
  belongs_to :user
  validates :title, presence: true, length: {minimum: 4, maximum: 100}
  validates :description, presence: true, length: {minimum: 5, maximum: 300}
end
