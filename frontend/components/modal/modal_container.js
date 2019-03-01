import Modal from './modal';
import { closeModal } from '../../actions/modal_actions';
import { connect } from 'react-redux';
import { logout } from '../../actions/session_actions';

const mapStateToProps = state => {
  return {
    modal: state.ui.modal,
    currentUser: state.session.currentUser,
  };
};

const mapDispatchToProps = dispatch => {
  return {
    closeModal: () => dispatch(closeModal()),
    logout: () => dispatch(logout())
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(Modal);