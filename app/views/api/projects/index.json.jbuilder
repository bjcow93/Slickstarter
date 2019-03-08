@projects.each do |project|
    json.set! project.id do
      json.partial! 'api/projects/project', project: project
      json.image_url url_for(project.image)
    end
  end
