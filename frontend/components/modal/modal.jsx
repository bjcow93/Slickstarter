import React, {Component} from 'react';
import { closeModal } from '../../actions/modal_actions';
import { connect } from 'react-redux';
import { logout } from '../../actions/session_actions';


class Modal extends Component {
  constructor(props) {
    super(props);

    this.state = {
      title: ""
    };

    this.handleClick = this.handleClick.bind(this);
  }

  handleClick(e) {
    e.preventDefault(),
    this.props.logout(),
    this.props.closeModal()
  };

  update(property) {
    return e => this.setState({
      [property]: e.target.value
    });
  }

  render () {    
    const { modal, closeModal, logout, currentUser } = this.props;
    const {title} = this.state;

    if (modal == "open") {
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

    } else if (modal == "search") {
      return (
        <div className="search-modal-background" onClick={closeModal}>
          <div className="search-modal-section">
            <div className="search-section-a" onClick={e => e.stopPropagation()}>
              <form className="search-form">
                  <input
                    type="text"
                    value={title}
                    onChange={this.update('title')}
                    className="search-field"
                    placeholder="Search by project title"
                    autoFocus
                  />
              </form>
            </div>
            <div className="search-section-b">
              <div className="x-icon"></div>
            </div>
          </div>
        </div>
      )
    } else {
    return null;
    }
  }
}




const mapStateToProps = state => {
  return {
    modal: state.ui.modal,
    currentUser: state.session.currentUser
  };
};

const mapDispatchToProps = dispatch => {
  return {
    closeModal: () => dispatch(closeModal()),
    logout: () => dispatch(logout())
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(Modal);