import React from 'react';
import { Link } from 'react-router-dom';

const ProjectIndexItem = ({ project }) => {
  let pledged_array = project.backings.map((obj) => obj.pledge_amount);
  let pledged = (pledged_array.reduce((acc, cv) => (acc + cv), 0)) * 100;
  const funded = Math.round(pledged / project.funding_goal);
  // const funded = project.user.projects.length * 50 - (project.funding_goal % 6);
 
  return (
    <div className="project-index-item">
    <Link className="link" to={`/projects/${project.id}`}>
      {project.title}
    </Link>
    <div className="funded">{funded}% funded</div>
    <div className="author">By&nbsp;<p className="author-link">{project.user.name}</p></div>
  </div>
  )
};

export default ProjectIndexItem;
