import React, { Component } from 'react';
import { Route } from 'react-router-dom';
import { Link } from 'react-router-dom';

import ProjectIndexItem from './project_index_item';
// import ProjectFormContainer from './project_form_container';

class ProjectIndex extends Component {
  componentDidMount() {
    this.props.fetchProjects();
  }


  grabProject(n, type='link') {
    const { projects } = this.props;

    if (projects.length === 0 || projects[n-1] === undefined) {
      return <div></div>
    } else if (type === 'link') {
      return <ProjectIndexItem key={projects[n-1].id} project={projects[n-1]} />
    } else if (type === 'obj') {
      return projects[n - 1]
    }
  }

  render() {
    const { projects } = this.props;
    // debugger
    if (projects.length === 0) return null;
  
    return (
      <section className="homepage">
        <div className="categories">
          <div><Link to={`/`}>Arts</Link></div>
          <div><Link to={`/`}>Comics & Illustration</Link></div>
          <div><Link to={`/`}>Design & Tech</Link></div>
          <div><Link to={`/`}>Film</Link></div>
          <div><Link to={`/`}>Food & Craft</Link></div>
          <div><Link to={`/`}>Games</Link></div>
          <div><Link to={`/`}>Music</Link></div>
          <div><Link to={`/`}>Publishing</Link></div>
        </div>
        <div className="middle">
          <div className="featured">
            <h2>FEATURED PROJECT</h2>
            <br />
            <Link className="underline-main" to={`/projects/${this.grabProject(1, 'obj').id}`}>
              <img className="featured-img" src={this.grabProject(1, 'obj').image_url}></img>
              <br />
              <div className="featured-title">{this.grabProject(1, 'obj').title}</div>
            </Link>
            <br />
            <div className="featured-description">{this.grabProject(1, 'obj').description}</div>
            <br />
            <div className="author">By&nbsp;<p className="author-link">{projects[0].user.name}</p>
            </div>
          </div>
          <div className="recommended">
            <h2>RECOMMENDED</h2>
            <div className="rec-container">
              <Link className="rec-i" to={`/projects/${this.grabProject(2, 'obj').id}`}><img className="rec-img" src={this.grabProject(2, 'obj').image_url}></img></Link>
              {this.grabProject(2)}
            </div>
            <div className="rec-container">
              <Link className="rec-i" to={`/projects/${this.grabProject(3, 'obj').id}`}><img className="rec-img" src={this.grabProject(3, 'obj').image_url}></img></Link>
                {this.grabProject(3)}
            </div>
            <div className="rec-container">
              <Link className="rec-i" to={`/projects/${this.grabProject(4, 'obj').id}`}><img className="rec-img" src={this.grabProject(4, 'obj').image_url}></img></Link>
              {this.grabProject(4)}
            </div>
            <br />
            <br />
            <div><Link className="more-projects" to={`/`}>View more projects</Link></div>
          </div>
          </div>
        <div className="favorites">
          <div className="fav-section">
            <img className="rec-img" src={this.grabProject(5, 'obj').image_url}></img>
            <br />
            <div>{this.grabProject(5, 'obj').title}</div>
            <br />
            <div>{this.grabProject(5, 'obj').description}</div>
            <br />
            <div className="author">By&nbsp;<p className="author-link">{this.grabProject(5, 'obj').user.name}</p></div>

            </div>{/* {this.grabProject(5)} */}
          <div className="fav-section">
            <img className="rec-img" src={this.grabProject(6, 'obj').image_url}></img>
            <br />

            <div className="fav-section-title">{this.grabProject(6, 'obj').title}</div>
            <br />

            <div>{this.grabProject(6, 'obj').description}</div>
            <br />
            <div className="author">By&nbsp;<p className="author-link">{this.grabProject(6, 'obj').user.name}</p></div>
            </div>{/* {this.grabProject(6)} */}
          <div className="fav-section">
            <img className="rec-img" src={this.grabProject(7, 'obj').image_url}></img>
            <br />

            <div className="fav-section-title">{this.grabProject(7, 'obj').title}</div>
            <br />

            <div>{this.grabProject(7, 'obj').description}</div>
            <br />
            <div className="author">By&nbsp;<p className="author-link">{this.grabProject(7, 'obj').user.name}</p></div>

            </div>{/* {this.grabProject(7)} */}
          <div className="fav-section">
            <img className="rec-img" src={this.grabProject(8, 'obj').image_url}></img>
            <br />

            <div>{this.grabProject(8, 'obj').title}</div>
            <br />

            <div>{this.grabProject(8, 'obj').description}</div>
            <br />
            <div className="author">By&nbsp;<p className="author-link">{this.grabProject(8, 'obj').user.name}</p></div>

            </div>{/* {this.grabProject(8)} */}
        </div>
      </section>
    );
  }
}

export default ProjectIndex;