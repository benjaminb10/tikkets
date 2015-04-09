class Ticket < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  belongs_to :user
  validates :title, presence: true

  acts_as_taggable
  acts_as_taggable_on :label
end
