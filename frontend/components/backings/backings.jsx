import React from 'react';
import { withRouter } from 'react-router';
import ProjectShow from '../projects/project_show_container';

class BackingForm extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      pledge_amount: 0,
    };

    // this.handleFile = this.handleFile.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.createBacking = this.props.createBacking.bind(this);
    // this.handleClick = this.handleClick.bind(this);
  }


  update(property) {
    return e => this.setState({
      [property]: e.target.value
    });
  }


  // handleFile(e) {
  //   const file = e.currentTarget.files[0];
  //   const fileReader = new FileReader();
  //   fileReader.onloadend = () => {
  //     this.setState({ photoFile: file, photoUrl: fileReader.result });
  //   };
  //   if (file) {
  //     fileReader.readAsDataURL(file);
  //   }
  // }

  handleSubmit(e) {
    e.preventDefault();
    const backing = Object.assign({}, this.state);
    const { pledge_amount } = backing;
    const project_id = String(this.props.projectId);
    const formData = new FormData();
    formData.append('backing[pledge_amount]', pledge_amount);
    formData.append('backing[project_id]', project_id);

    // if (this.state.photoFile) {
    //   formData.append('project[image]', photoFile);
    // }

    // this.props.createBacking(formData).

    const promise = new Promise((resolve) => {this.props.closeModal(); resolve();});

    // this.createBacking(formData).then(
    //   () => {
    //     this.props.history.push(`/projects/${this.props.projectId}/`);
    //   }
    // );
// debugger
    this.createBacking(formData).then(promise).then(
      () => {
        // location.reload();
        // this.render()
        this.props.fetchProject(project_id)
      }
    );

    // this.props.closeModal();
  }

  // handleClick(e) {
  //   e.preventDefault(),
  //   closeModal()
  // }


  render() {
    const { pledge_amount } = this.state;
    const { closeModal, currentUser } = this.props;
    if (!currentUser) {
      return (
        <div className="CSmodal-background" onClick={closeModal}>
          <div className="CSmodal-section" onClick={e => e.stopPropagation()}>
            <div className="CSmodal-section-a">Must be logged in first!</div>
          </div>
        </div>
      )
    }

    // debugger

    return (
      <div className="CSmodal-background" onClick={closeModal}>
        <div className="backing-modal-section" onClick={e => e.stopPropagation()}>
          <div className="backing-modal-section-a">
            <form className="backing-form" onSubmit={this.handleSubmit}>
              <h1 className="backing-header">How much would you like to pledge?</h1>
              <input
                min="0"
                type="number"
                value={pledge_amount}
                onChange={this.update('pledge_amount')}
                className="create-project-field"
                placeholder="Enter a funding goal."
              />
              <input
                type="submit"
                value="Submit backing"
                className="create-submit-button"
              />
            </form>
          </div>
        </div>
      </div>
    )
  }

}


export default BackingForm;