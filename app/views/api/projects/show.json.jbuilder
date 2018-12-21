json.project do
  json.partial! 'project', project: @project
  json.image_url url_for(@project.image)
end

