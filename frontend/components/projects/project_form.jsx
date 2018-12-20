import React from 'react';
import { withRouter } from 'react-router';

class ProjectForm extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      title: "",
      description: "",
      funding_goal: '',
      start_date: '',
      end_date: ''
    };
    // this.coords = { lat: props.lat, lng: props.lng };
    // this.state = {
    //   description: '',
    //   seating: 2,
    //   photoFile: null,
    //   photoUrl: null
    // };
    // this.handleSubmit = this.handleSubmit.bind(this);
    // this.navigateToSearch = this.navigateToSearch.bind(this);
    // this.handleFile = this.handleFile.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  update(property) {
    return e => this.setState({
      [property]: e.target.value
    });
  }

  handleSubmit(e) {
    e.preventDefault();
    const project = Object.assign({}, this.state);
    this.props.createProject(project).then(
      res => {
        this.props.history.push(`/projects/${res.payload.project.id}/`);
      }
    );
  }

  render() {
    const { title, description, funding_goal, start_date, end_date } = this.state;

    return (
      <div>
      <form className="new-form" onSubmit={this.handleSubmit}>
        <label>title</label>
        <input
          type="text"
          value={title}
          onChange={this.update('title')}
          className="project-field"
        />
        <br />
        <label>description</label>
        <textarea
          value={description}
          onChange={this.update('description')}
          className="project-field"
        />
        <br />
        <label>funding goal</label>
        <input
          min="0"
          type="number"
          value={funding_goal}
          onChange={this.update('funding_goal')}
          className="project-field"
        />
        <br />
        <label>start date</label>
        <input
          type="date"
          value={start_date}
          onChange={this.update('start_date')}
          className="project-field"
        />
        <br />
        <label>end date</label>
        <input
          type="date"
          value={end_date}
          onChange={this.update('end_date')}
          className="project-field"
        />
        <br />
          <div className="create-submit-button">
            <input
              type="submit"
              value="Create Project"
              className="new-submit-button"
            />
          </div>
      </form>
      </div>
    )
  }

}


export default ProjectForm;