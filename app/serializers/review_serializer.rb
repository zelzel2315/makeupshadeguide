class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :comment, :user_id, :makeup_id
end
