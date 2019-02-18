json.extract! @category, :id, :name, :description
json.projects @category.projects, partial: 'api/projects/project', as: :project
