import React from 'react';
import { closeModal } from '../../actions/modal_actions';
import { connect } from 'react-redux';
import { logout } from '../../actions/session_actions';


function CSModal({ modal, closeModal }) {
  const handleClick = (e) => (
    e.preventDefault(),
    closeModal()
  );

  if (modal != "CSopen") {
    return null;
  }

  return (
    <div className="CSmodal-background" onClick={closeModal}>
      <div className="CSmodal-section" onClick={e => e.stopPropagation()}>
        <div className="CSmodal-section-a">Feature Coming Soon!</div>
      </div>
    </div>
  );
}

const mapStateToProps = state => {
  return {
    modal: state.ui.modal,
  };
};

const mapDispatchToProps = dispatch => {
  return {
    closeModal: () => dispatch(closeModal()),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(CSModal);