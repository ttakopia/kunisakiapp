class Comment < ActiveRecord::Base
  belongs_to :event
  validates :commenter, presence: true
  validates :body, presence: true
end