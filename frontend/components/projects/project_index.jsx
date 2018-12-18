import React, { Component } from 'react';
import { Route } from 'react-router-dom';

import ProjectIndexItem from './project_index_item';
// import ProjectFormContainer from './project_form_container';

class ProjectIndex extends Component {
  componentDidMount() {
    this.props.fetchProjects();
  }

  // grabProject(n) {
  //   const { projects } = this.props;
  //   if (projects.length === 0) {
  //     return { id: 1, user_id: 1, title: "", description: "", funding_goal: 0, start_date: "", end_date: "" };
  //   } else {
  //     return projects[n-1];
  //   }
  // }

  grabProject(n) {
    const { projects } = this.props;

    if (projects.length === 0 || projects[n-1] === undefined) {
      return <div></div>
    } else {
      return <ProjectIndexItem key={projects[n-1].id} project={projects[n-1]} />
    }
  }

  render() {
    const { projects } = this.props;
    return (
      <section className="homepage">
        <div className="categories">Categories Banner</div>
        <div className="featured">{this.grabProject(1)}</div>
        <div className="recommended">
          {this.grabProject(2)}
          {this.grabProject(3)}
          {this.grabProject(4)}
          {/* <ProjectIndexItem key={this.grabProject(2).id} project={this.grabProject(2)} />
          <ProjectIndexItem key={this.grabProject(3).id} project={this.grabProject(3)} />
          <ProjectIndexItem key={this.grabProject(4).id} project={this.grabProject(4)} /> */}
          {/* {projects.map(project => <ProjectIndexItem key={project.id} project={project} />)} */}
        </div>
        <div className="favorites">
          {this.grabProject(5)}
          {this.grabProject(6)}
          {this.grabProject(7)}
          {this.grabProject(8)}
        </div>
      </section>
    );
  }
}

export default ProjectIndex;