class SaveFilterSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :filter_id, :img, :name, :username, :id_user, :save_count
  
    belongs_to :user
    
  end
  