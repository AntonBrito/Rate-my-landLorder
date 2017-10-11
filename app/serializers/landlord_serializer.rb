class LandlordSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :user_id, :address
end
