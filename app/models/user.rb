class User < ActiveRecord::Base
  include PublicActivity::Model

  after_create :track
  tracked only: :create, owner: :itself

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :tickets
  has_many :comments

  def track
  end

  def username
    email.partition('@').first
  end
end
