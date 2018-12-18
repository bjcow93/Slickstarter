@projects.each do |project|
  json.set! project.id do
    json.partial! 'project', project: project
    # json.extract! project, :id
  end
end
