class Comment < ActiveRecord::Base
  include PublicActivity::Model
  tracked only: :create, :owner => proc {|controller, model| controller.current_user} # set owner to current_user by default (check app/controllers/application_controller.rb)

  belongs_to :ticket
  belongs_to :user
end