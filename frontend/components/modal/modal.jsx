import React, {Component} from 'react';
import BackingForm from '../backings/backings_container';
import Searchbar from '../searchbar/searchbar_container';


class Modal extends Component {
  constructor(props) {
    super(props);

    this.state = {
      title: "",
      letters: "",
      searchbar: []
    };

    this.handleClick = this.handleClick.bind(this);
  }


  handleClick(e) {
    e.preventDefault(),
    this.props.logout(),
    this.props.closeModal()
  }


  render () {    
    const { modal, closeModal, currentUser } = this.props;

    if (!modal) return null

    if (modal.name == "open") {

      return (
        <div className="modal-background" onClick={closeModal}>
          <div className="modal-section" onClick={e => e.stopPropagation()}>
            <div className="modal-section-a">{currentUser.name}</div>
            <div className="modal-section-b" onClick={e => e.stopPropagation()}>
              <p className="header-button">
                <button onClick={this.handleClick}>Log out</button>
              </p>
            </div>
          </div>
        </div>
      );

    } else if (modal.name == "search") {

      return <Searchbar closeModal={closeModal}/>

    } else if (modal.name == "backing") {

      return <BackingForm closeModal={closeModal} currentUser={currentUser} project={modal.options.projectProps} />

    } else if (modal.name == "CSopen") {

      return (
      <div className="CSmodal-background" onClick={closeModal}>
        <div className="CSmodal-section" onClick={e => e.stopPropagation()}>
          <div className="CSmodal-section-a">Feature Coming Soon!</div>
        </div>
      </div>)

    } else {
    return null;
    }
  }
}

export default Modal;