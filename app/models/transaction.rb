class Transaction < ActiveRecord::Base
  has_many :comments
  belongs_to :category
  validates :category_id, presence: true
end
