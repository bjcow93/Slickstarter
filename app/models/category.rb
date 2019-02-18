class Category < ApplicationRecord
  validates :name, presence: true

  has_many :project_categories,
    primary_key: :id,
    foreign_key: :category_id,
    class_name: :ProjectCategory
    
  has_many :projects,
    through: :project_categories,
    source: :project
end
