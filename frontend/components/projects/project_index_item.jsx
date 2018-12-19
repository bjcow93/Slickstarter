import React from 'react';
import { Link } from 'react-router-dom';

const ProjectIndexItem = ({ project }) => (
  <div className="project-index-item">
    <div><Link className="link" to={`/projects/${project.id}`}>
      {project.title}
    </Link></div>
    <div className="funded">800% funded</div>
    <div className="author">By Author Name</div>
  </div>
);

export default ProjectIndexItem;
