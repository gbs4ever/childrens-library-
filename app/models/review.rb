class Review < ApplicationRecord
  validates :comments, :presence => true
  belongs_to :user
  belongs_to :book 
  scope :status, -> { where(status: "Ok")}
end
