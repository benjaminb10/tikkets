class Ticket < ActiveRecord::Base
  has_many :comments
end
