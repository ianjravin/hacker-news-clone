class User < ActiveRecord::Base
  validates :name, :presence => true

  has_many :messages
  has_many :posts
end
