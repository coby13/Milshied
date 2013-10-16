class Article < ActiveRecord::Base
  translates :title, :body
  attr_accessible :body, :category_id, :title

  extend FriendlyId
  friendly_id :title, use: :slugged
  belongs_to :category
end
