class CheckoutSerializer < ActiveModel::Serializer
  attributes :id ,:created_at
 belongs_to :book
end
