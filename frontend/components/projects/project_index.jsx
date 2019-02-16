import React, { Component } from 'react';
// import { Route } from 'react-router-dom';
import { Link } from 'react-router-dom';

import ProjectIndexItem from './project_index_item';

class ProjectIndex extends Component {
  constructor(props) {
    super(props);

  }

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
    if (projects.length <= 1) return null;
    
    return (
      <section className="homepage">
        <div className="categories">
          <div><Link to={`/categories/1`}>Arts</Link></div>
          <div><Link to={`/categories/2`}>Comics & Illustration</Link></div>
          <div><Link to={`/categories/3`}>Design & Tech</Link></div>
          <div><Link to={`/categories/4`}>Film</Link></div>
          <div><Link to={`/categories/5`}>Food & Craft</Link></div>
          <div><Link to={`/categories/6`}>Games</Link></div>
          <div><Link to={`/categories/7`}>Music</Link></div>
          <div><Link to={`/categories/8`}>Publishing</Link></div>
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
        <div className="fresh-favorites"><h2>FRESH FAVORITES</h2><p className="more-projects">View more</p></div>
        <div className="favorites">
          <div className="fav-section">
            <Link className="underline-main" to={`/projects/${this.grabProject(5, 'obj').id}`}>
            <img className="rec-img" src={this.grabProject(5, 'obj').image_url}></img>
            <br />
            <div className="fav-section-title">{this.grabProject(5, 'obj').title}</div>
            </Link>

            <div className="favorite-description">{this.grabProject(5, 'obj').description}</div>
            <div className="author">By&nbsp;<p className="author-link">{this.grabProject(5, 'obj').user.name}</p></div>

          </div>

          <div className="fav-section">
            <Link className="underline-main" to={`/projects/${this.grabProject(6, 'obj').id}`}>
            <img className="rec-img" src={this.grabProject(6, 'obj').image_url}></img>
            <br />

            <div className="fav-section-title">{this.grabProject(6, 'obj').title}</div>
            </Link>

            <div className="favorite-description">{this.grabProject(6, 'obj').description}</div>
            <div className="author">By&nbsp;<p className="author-link">{this.grabProject(6, 'obj').user.name}</p></div>
          </div>

          <div className="fav-section">
            <Link className="underline-main" to={`/projects/${this.grabProject(7, 'obj').id}`}>
            <img className="rec-img" src={this.grabProject(7, 'obj').image_url}></img>
            <br />

            <div className="fav-section-title">{this.grabProject(7, 'obj').title}</div>
            </Link>

            <div className="favorite-description">{this.grabProject(7, 'obj').description}</div>
            <div className="author">By&nbsp;<p className="author-link">{this.grabProject(7, 'obj').user.name}</p></div>

          </div>

          <div className="fav-section">
            <Link className="underline-main" to={`/projects/${this.grabProject(8, 'obj').id}`}>
            <img className="rec-img" src={this.grabProject(8, 'obj').image_url}></img>
            <br />

            <div className="fav-section-title">{this.grabProject(8, 'obj').title}</div>
            </Link>

            <div className="favorite-description">{this.grabProject(8, 'obj').description}</div>
            <div className="author">By&nbsp;<p className="author-link">{this.grabProject(8, 'obj').user.name}</p></div>

          </div>
        </div>
      </section>
    );
  }
}

export default ProjectIndex;

