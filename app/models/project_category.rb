class ProjectCategory < ApplicationRecord
  validates :project_id, :category_id, presence: true

  belongs_to :project,
    primary_key: :id,
    foreign_key: :project_id,
    class_name: :Project 

  belongs_to :category,
    primary_key: :id,
    foreign_key: :category_id,
    class_name: :Category
end
