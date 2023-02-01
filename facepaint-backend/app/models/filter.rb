class Filter < ApplicationRecord
  belongs_to :user
  has_many :save_filters, dependent: :destroy

  def username 
    self.user.username
  end

  def save_count
    saved = SaveFilter.all.filter{ |filter| filter.filter_id == self.id}
    return saved.length()
  end

end
