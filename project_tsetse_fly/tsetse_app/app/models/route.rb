class Route < ActiveRecord::Base
	belongs_to :user
  has_many :stations
  has_many :users
end
