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
      end_date: '',
      photoFile: null,
      photoUrl: null
    };

    this.handleFile = this.handleFile.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  update(property) {
    return e => this.setState({
      [property]: e.target.value
    });
  }

  handleFile(e) {
    const file = e.currentTarget.files[0];
    const fileReader = new FileReader();
    fileReader.onloadend = () => {
      this.setState({ photoFile: file, photoUrl: fileReader.result });
    };
    if (file) {
      fileReader.readAsDataURL(file);
    }
  }

  handleSubmit(e) {
    e.preventDefault();
    const project = Object.assign({}, this.state);
    const { title, description, funding_goal, start_date, end_date, photoFile } = project;
    const formData = new FormData();
    formData.append('project[title]', title);
    formData.append('project[description]', description);
    formData.append('project[funding_goal]', funding_goal);
    formData.append('project[start_date]', start_date);
    formData.append('project[end_date]', end_date);

    if (this.state.photoFile) {
      formData.append('project[image]', photoFile);
    } 

    this.props.createProject(formData).then(
      res => {
        this.props.history.push(`/projects/${res.payload.project.id}/`);
      }
    );
  }

  render() {
    const { title, description, funding_goal, start_date, end_date, photoUrl } = this.state;
    const preview = photoUrl ? <img height="200px" width="200px" src={photoUrl} /> : null;


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
          type="datetime-local"
          value={start_date}
          onChange={this.update('start_date')}
          className="project-field"
        />

        <br />

        <label>end date</label>
        <input
          type="datetime-local"
          value={end_date}
          onChange={this.update('end_date')}
          className="project-field"
        />

        <br />

        <div className="button-holder">
          <h3>Image preview </h3>
          {preview}
          <h3 className="button-holder">Add a Picture</h3>
          <input type="file" className="new-bench-button"
            onChange={this.handleFile.bind(this)} />
        </div>

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