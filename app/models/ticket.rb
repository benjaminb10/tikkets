class Ticket < ActiveRecord::Base
  has_many :comments, dependent: :destroy
end
