import React from 'react';


class BackingForm extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      pledge_amount: 0,
    };

    this.handleSubmit = this.handleSubmit.bind(this);
    this.createBacking = this.props.createBacking.bind(this);
  }


  update(property) {
    return e => this.setState({
      [property]: e.target.value
    });
  }


  handleSubmit(e) {
    e.preventDefault();
    const backing = Object.assign({}, this.state);
    const { pledge_amount } = backing;
    const project_id = String(this.props.projectId);
    const formData = new FormData();
    formData.append('backing[pledge_amount]', pledge_amount);
    formData.append('backing[project_id]', project_id);


    const promise = new Promise((resolve) => {this.props.closeModal(); resolve();});

    this.createBacking(formData).then(promise).then(
      () => {
        this.props.fetchProject(project_id);
      }
    );
  }


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