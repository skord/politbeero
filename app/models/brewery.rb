class Brewery < ActiveRecord::Base
  DISTRIBUTIONS= ['Nano', 'Macro', 'Micro']

  extend FriendlyId
  friendly_id :name, use: :slugged
  has_many :beers

  validates :name, presence: true, uniqueness: true
  validates :city, presence: true
  validates :state, presence: true
  validates :distribution, presence: true, inclusion: {in: DISTRIBUTIONS}



  attr_accessible :city, :name, :state, :url, :distribution
end
