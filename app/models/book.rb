class Book < ApplicationRecord
    validates :title, :presence => true
    validates :author, :presence => true
    has_many :checkouts
    has_many :users, -> {distinct}, through: :checkouts
    has_many :reviews
    scope :title, -> { order(title: :asc)}
    scope :author, -> { order(author: :asc)}
  
end
