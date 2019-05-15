class ReviewSerializer < ActiveModel::Serializer
  attributes :id,:comments, :status
end
