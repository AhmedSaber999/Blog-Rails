# == Schema Information
#
# Table name: articales
#
#  id          :integer         not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class Articale < ApplicationRecord
  validates :title, presence: true, length: {minimum: 4, maximum: 100}
  validates :description, presence: true, length: {minimum: 5, maximum: 300}
end
