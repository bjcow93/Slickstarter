class Project < ApplicationRecord
validates :title, presence: true, uniqueness: true 
validates :description, :funding_goal, :start_date, :end_date, presence: true 

belongs_to :user
has_one_attached :image

has_many :project_categories,
  primary_key: :id,
  foreign_key: :project_id,
  class_name: :ProjectCategory

has_many :categories,
  through: :project_categories,
  source: :category

has_many :backings,
  primary_key: :id,
  foreign_key: :project_id,
  class_name: :Backing

has_many :backers,
  through: :backings,
  source: :user
end