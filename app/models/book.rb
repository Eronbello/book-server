class Book < ApplicationRecord
  belongs_to :category
  belongs_to :user
  
  scope :availables, -> { where("borrowed_by is null") }
  scope :borroweds, -> { where("borrowed_by is not null") }

  validates :title, presence: true
  validates :description, presence: true
  validates :author, presence: true
  validates :description, presence: true
  validates :user_id, presence: true
  validates :category_id, presence: true
end
