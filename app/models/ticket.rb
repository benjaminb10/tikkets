class Ticket < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :title, presence: true
end
