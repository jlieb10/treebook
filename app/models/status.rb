class Status < ActiveRecord::Base
  belongs_to :user
  attr_accessible :content, :user_id, :full_name, :first_name, :last_name

  validates :content, presence: true, length: { minimum: 2}

  validates :user_id, presence: true
end
