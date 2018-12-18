class Project < ApplicationRecord
validates :title, presence: true, uniqueness: true 
validates :description, :funding_goal, :start_date, :end_date, presence: true 

belongs_to :user

# has_many :backings
# has_many :rewards
# has_many :projects_categories
# has_many :categories,
#   through: :projects_categories,
#   source: :category

end