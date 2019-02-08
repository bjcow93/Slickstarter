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
      <div className="main-create-section">
      <form className="create-project-form" onSubmit={this.handleSubmit}>
        <h1 className="create-main-header">Let's get started!</h1>
        <br />
        <div className="create-input-field">
          <h1 className="create-headers">Choose a Title.</h1>
          <h2 className="create-below-headers">Pick a project title to display to the community.</h2>
          <input
            type="text"
            value={title}
            onChange={this.update('title')}
            className="create-project-field"
            placeholder="Select your title"
          />
        </div>

        <br />
        <div className="create-input-field">
          <h1 className="create-headers">Describe what you’ll be creating.</h1>
            <h2 className="create-below-headers">You can edit this later.</h2>
          <textarea
            value={description}
            onChange={this.update('description')}
            className="create-project-field"
            placeholder="Briefly describe what your project is about in one or two sentences."
            rows="10"
          />
        </div>
        <br />

        <div className="create-input-field">
          <h1 className="create-headers">Let's set a goal for the project.</h1>
          <h2 className="create-below-headers">Pick a funding goal you wish to reach.</h2>
          <input
            min="0"
            type="number"
            value={funding_goal}
            onChange={this.update('funding_goal')}
            className="create-project-field"
            placeholder="Enter a funding goal."
          />
        </div>
        <br />

        <div className="create-input-field">
          <h1 className="create-headers">Choose a duration for the project.</h1>
          <h2 className="create-below-headers">Choose your project's timeframe.</h2>
          <label>Start Date</label>
          <input
            type="datetime-local"
            value={start_date}
            onChange={this.update('start_date')}
            className="create-project-field"
          />
        </div>
        <br />
        <div className="create-input-field">
          <label>End Date</label>
          <input
            type="datetime-local"
            value={end_date}
            onChange={this.update('end_date')}
            className="create-project-field"
          />
        </div>
        <br />

      <div className="create-input-field">
          <h1 className="create-headers">Finally, select an image for your project.</h1>
          <h2 className="create-below-headers">And don’t worry, you can edit this later, too!</h2>
          {preview}
          <div className="button-holder">
          <input type="file" className="new-image-button"
            onChange={this.handleFile.bind(this)} />
          </div>
      </div>

        <br />
          <input
            type="submit"
            value="Create Project"
            className="create-submit-button"
          />
      </form>
      </div>
    )
  }
}


export default ProjectForm;