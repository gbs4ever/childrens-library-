class Review < ApplicationRecord
  validates :comments, :presence => true
  belongs_to :user
  belongs_to :book 
  #add filter for status 
  scope :status, -> { where(status: "Ok")}
end
