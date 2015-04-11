class Ticket < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  belongs_to :user
  validates :title, presence: true

  acts_as_taggable
  acts_as_taggable_on :label

  def last_update
    last_update = updated_at
    if comments.last and updated_at < comments.last.updated_at
      last_update = comments.last.updated_at 
    end
    last_update.localtime.strftime("%d/%m/%y %H:%M")
  end

  def last_user
    last_user = user
    if comments.last
      last_user = comments.last.user
    end
    last_user
  end

  def to_param
    "#{id}-#{title}".parameterize
  end
end
