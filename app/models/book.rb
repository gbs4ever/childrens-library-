class Book < ApplicationRecord
    validates :title, :presence => true
    validates :author, :presence => true
    has_many :publishers
    has_many :checkouts, dependent: :destroy
   
    has_many :users, -> {distinct}, through: :publishers
    #has_many :users, -> {distinct}, through: :checkouts 
    has_many :reviews, dependent: :destroy
    scope :title, -> { order(title: :asc)}
    scope :author, -> { order(author: :asc)}
    scope :contains, -> (title) { where("title like ?", "%#{title}%")}
end
