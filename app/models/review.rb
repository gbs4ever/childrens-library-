class Review < ApplicationRecord
  validates :comments, :presence => true
  belongs_to :user
  belongs_to :book 
end
