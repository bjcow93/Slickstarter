import React from 'react';
import { Link } from 'react-router-dom';

const ProjectIndexItem = ({ project }) => {

  const funded = project.user.projects.length * 50 - (project.funding_goal % 6);
 
  return (
    <div className="project-index-item">
    <div><Link className="link" to={`/projects/${project.id}`}>
      {project.title}
    </Link></div>
    <div className="funded">{funded}% funded</div>
    <div className="author">By&nbsp;<p className="author-link">{project.user.name}</p></div>
  </div>
  )
};

export default ProjectIndexItem;
