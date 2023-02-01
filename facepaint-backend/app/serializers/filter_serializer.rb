class FilterSerializer < ActiveModel::Serializer
  attributes :id, :name, :img, :username, :save_count

  belongs_to :user
end
