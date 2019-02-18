import React, { Component } from 'react';
import { Route } from 'react-router-dom';
import { Link } from 'react-router-dom';

import ProjectIndexItem from '../projects/project_index_item';

class CategoryShow extends Component {
  constructor(props) {
    super(props);

    this.state = {
      name: "",
      description: "",
      projects: []
    };

  }
  componentDidMount() {
    this.props.fetchCategory(this.props.match.params.categoryId);
  }

  componentDidUpdate(prevProps) {
    if (prevProps.match.params.categoryId !== this.props.match.params.categoryId) {
      this.props.fetchCategory(this.props.match.params.categoryId);
    }
    window.scrollTo(0, 0);
  }

  render() {
    const { category } = this.props;
    if (!category) return null;
    const projects = category.projects;
    // const projects = this.state.projects;
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

        <div className="category-name">
          <div className="category-title">{this.props.category.name}</div>
          <div className="category-description">{this.props.category.description}</div>
        </div>

        <div className="middle">
          <div className="featured">
            <h2>ON OUR RADAR</h2>
            <br />
            <Link className="underline-main" to={`/projects/${projects[0].id}`}>
              <img className="featured-img" src={projects[0].image_url}></img>
              <br />
              <div className="featured-title">{projects[0].title}</div>
            </Link>
            <br />
            <div className="featured-description">{projects[0].description}</div>
            <br />
            <div className="author">By&nbsp;<p className="author-link">{projects[0].user.name}</p>
            </div>
          </div>
          <div className="recommended">
            <h2>RECOMMENDED</h2>
            <div className="rec-container">
              <Link className="rec-i" to={`/projects/${projects[1].id}`}><img className="rec-img" src={projects[1].image_url}></img></Link>
              <ProjectIndexItem key={projects[1].id} project={projects[1]} />
            </div>
            <div className="rec-container">
              <Link className="rec-i" to={`/projects/${projects[2].id}`}><img className="rec-img" src={projects[2].image_url}></img></Link>
              <ProjectIndexItem key={projects[2].id} project={projects[2]} />
            </div>
            <div className="rec-container">
              <Link className="rec-i" to={`/projects/${projects[3].id}`}><img className="rec-img" src={projects[3].image_url}></img></Link>
              <ProjectIndexItem key={projects[3].id} project={projects[3]} />
            </div>
            <br />
            <br />
            <div><Link className="more-projects" to={`/`}>View more projects</Link></div>
          </div>
        </div>
      </section>
    );
  }
}

export default CategoryShow;