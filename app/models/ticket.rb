class Ticket < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :title, presence: true

  acts_as_taggable
  acts_as_taggable_on :label
end
