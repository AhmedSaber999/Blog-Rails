# == Schema Information
#
# Table name: articale_categories
#
#  id          :integer          not null, primary key
#  articale_id :integer
#  category_id :integer
#
class ArticaleCategory < ApplicationRecord
  belongs_to :articale
  belongs_to :category
end
