import { connect } from 'react-redux';
import { logout } from '../../actions/session_actions';
import Navbar from './navbar';
import { openModal, closeModal } from '../../actions/modal_actions';
import React from 'react';

const mapStateToProps = ({ session, entities: { users } }) => {
  return {
    currentUser: users[session.id]
  };
};

const mapDispatchToProps = dispatch => ({
  logout: () => dispatch(logout()),
  closeModal: () => dispatch(closeModal()),
  openMod: (<button className="icon" onClick={() => dispatch(openModal('open'))}></button>),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Navbar);
