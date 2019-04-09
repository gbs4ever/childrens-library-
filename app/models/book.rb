class Book < ApplicationRecord
    has_many :checkouts
    has_many :users, -> {distinct}, through: :checkouts
end
