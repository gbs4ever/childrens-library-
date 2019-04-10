class Book < ApplicationRecord
    validates :title, :presence => true
    has_many :checkouts
    has_many :users, -> {distinct}, through: :checkouts
    has_many :reviews
end
