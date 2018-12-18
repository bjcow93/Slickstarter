import React from 'react';
import { Link } from 'react-router-dom';

const ProjectIndexItem = ({ project }) => (
  <div className="project-index-item">
    <Link to={`/projects/${project.id}`}>
      {/* <span>{project.id}</span> */}
      {/* <img src={pokemon.image_url} alt={pokemon.name} /> */}
      <span>{project.title}</span>
    </Link>
  </div>
);

export default ProjectIndexItem;
