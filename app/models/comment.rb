class Comment < ActiveRecord::Base
  belongs_to :ticket
end
