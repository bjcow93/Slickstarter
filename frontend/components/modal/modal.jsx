import React from 'react';
import { closeModal } from '../../actions/modal_actions';
import { connect } from 'react-redux';
import { logout } from '../../actions/session_actions';


function Modal({ modal, closeModal, logout, currentUser }) {
  const handleClick = (e) => (
    e.preventDefaulsasdft(),
    logout(),
    closeModal()
  );

  if (!modal) {
    return null;
  }

  return (
    <div className="modal-background" onClick={closeModal}>
      <div className="modal-section" onClick={e => e.stopPropagation()}>
        <div className="modal-section-a">{currentUser.name}</div>
        <div className="modal-section-b" onClick={e => e.stopPropagation()}>
          <p className="header-button">
            <button onClick={handleClick}>Log out</button>
          </p>
        </div>
      </div>
    </div>
  );
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