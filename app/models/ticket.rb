class Ticket < ActiveRecord::Base
  include PublicActivity::Model
  tracked :owner => proc {|controller, model| controller.current_user} # set owner to current_user by default (check app/controllers/application_controller.rb)

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

  def to_param
    "#{id}-#{title}".parameterize
  end

  def long_title
    "##{id}: #{title}"
  end
end
