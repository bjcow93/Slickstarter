import React, { Component } from 'react';


class ProjectShow extends Component {
  componentDidMount() {
    this.props.fetchProject(this.props.match.params.projectId);
  }

  componentDidUpdate(prevProps) {
    if (prevProps.match.params.projectId !== this.props.match.params.projectId) {
      this.props.fetchProject(this.props.match.params.projectId);
    }
  }

  render() {
    const { project } = this.props;

    if (!project) return null;

    return (
      <section className="project-show">
        <div>
          <h2>{project.title}</h2>
          <div>Description: {project.description}</div>
        </div>
      </section>
    );
  }
}

export default ProjectShow;