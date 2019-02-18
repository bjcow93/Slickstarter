import React, { Component } from 'react';


class ProjectShow extends Component {
  componentDidMount() {
    this.props.fetchProject(this.props.match.params.projectId);

    window.scrollTo(0, 0);
  }

  componentDidUpdate(prevProps) {
    if (prevProps.match.params.projectId !== this.props.match.params.projectId) {
      this.props.fetchProject(this.props.match.params.projectId);
    }

    window.scrollTo(0,0);
  }

  numCreated() {
    const { project } = this.props;
    if (!project || !project.user.projects) return null;

    if (project.user.projects.length === 1) {
      return "First";
    } else {
      return project.user.projects.length;
    }
  }

  render() {
    const { project } = this.props;
    if (!project) return null;
    
    function getRandomArbitrary(min, max) {
      return Math.random() * (max - min) + min;
    }
    let pledged = `$${Math.floor(getRandomArbitrary(100, 999))},${Math.floor(getRandomArbitrary(100,999))}`
    let backers = `${Math.floor(getRandomArbitrary(0, 50))},${Math.floor(getRandomArbitrary(100, 999))}`
    let days_to_go = Math.floor(((new Date(project.end_date)) - (new Date())) / (1000 * 3600 * 24));

    return (
      <section className="project-show">
        <div>
          <div className="show-top">
            <div className="show-top-left">
              <img className="show-user-icon" src={window.usericonUrl} />
              <div className="show-creator"><p>By</p>&nbsp;<p className="show-creator-link">{project.user.name}</p></div>
              <div className="show-total-created">{this.numCreated()} created</div>
              <div className="follow-creator-button">Follow Creator</div>
            </div>
            <div className="show-top-right">
              <h2 className="show-title">{project.title}</h2>
              <br />
              <div className="show-desc">{project.description}</div>
            </div>
          </div>
          <div className="show-bottom">
            <div className="show-bottom-left">
              <img className="showpage-img" src={project.image_url}></img>
            </div>
            <div className="show-bottom-right">
              <div className="progress-bar"></div>
              <br />
              <div className="pledged">{pledged}</div>
                <p>pledged of ${project.funding_goal} goal</p>
              <br />
              <div className="backers">{backers}</div>
                <p>backers</p>
              <br />
              <div className="days-to-go">{days_to_go}</div>
                <p>days to go</p>
                <br />
              {/* <div className="backing-button">Back this project</div> */}
              <button className="backing-button" onClick={this.props.openCSMod}>Back this project</button>
              <button className="reminder-button" onClick={this.props.openCSMod}>
                <img className="heart-icon" src={window.heartUrl} />
                Remind me
              </button>
            </div>
          </div>
        </div>
      </section>
    );
  }
}

export default ProjectShow;