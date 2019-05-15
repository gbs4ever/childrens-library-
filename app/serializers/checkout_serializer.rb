class CheckoutSerializer < ActiveModel::Serializer
  attributes :id ,:created_at, :due_date
 belongs_to :book
end
