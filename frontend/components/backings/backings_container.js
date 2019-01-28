import { connect } from 'react-redux';

import BackingForm from './backings';
import { createBacking } from '../../actions/backing_actions';
import { closeModal } from '../../actions/modal_actions';
import { fetchProject } from '../../actions/project_actions';



const mapStateToProps = (state, ownProps) => {
  const projectId = ownProps.project.id;
  const currentUser = state.session.currentUser;
  return {
    currentUser,
    projectId
  };
};

const mapDispatchToProps = dispatch => ({
  createBacking: backing => dispatch(createBacking(backing)),
  closeModal: () => dispatch(closeModal()),
  fetchProject: id => dispatch(fetchProject(id)),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(BackingForm);