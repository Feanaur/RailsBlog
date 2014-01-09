class Post < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 3 }
  validates :text, presence: true
  belongs_to :user
  has_many :comments, :dependent => :destroy
end
