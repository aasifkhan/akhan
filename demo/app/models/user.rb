class User < ActiveRecord::Base
  has_many :posts
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :password, length: { in: 6..40 }
  before_create do |user|
    user.username = (user.firstname + user.lastname) if user.username.blank?
  end
end
