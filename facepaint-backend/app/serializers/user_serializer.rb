class UserSerializer < ActiveModel::Serializer
  attributes :id, :avatar, :username, :name, :instagram, :bio, :save_count
  has_many :filters
  has_many :save_filters
end
