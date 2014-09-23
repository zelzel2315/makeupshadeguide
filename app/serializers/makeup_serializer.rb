class MakeupSerializer < ActiveModel::Serializer
  attributes :id, :brand, :product, :shade, :true_shade
end
