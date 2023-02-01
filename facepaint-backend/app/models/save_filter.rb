class SaveFilter < ApplicationRecord
  belongs_to :user
  belongs_to :filter

  validates_uniqueness_of :user_id, :scope => [:filter_id]

  def img 
    self.filter.img
  end 
  def name
    self.filter.name
  end
  
  def username
    self.filter.user.username
  end

  def id_user
    self.filter.user.id
  end

  def save_count
    self.filter.save_count
  end

end
