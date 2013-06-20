class Beer < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :brewery
  belongs_to :style
  scope :current, where(in_stock: true)
  attr_accessible :abv, :ibu, :name, :in_stock, :description, :short_description, :vessel
end
