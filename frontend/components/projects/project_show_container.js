import { connect } from 'react-redux';

import ProjectShow from './project_show';
import { fetchProject } from '../../actions/project_actions';
import { openModal, openCSModal, closeModal } from '../../actions/modal_actions';


const mapStateToProps = (state, ownProps) => {
  const project = state.entities.projects[ownProps.match.params.projectId];
  return {
    project,
  };
};

const mapDispatchToProps = (dispatch, state) => ({
  fetchProject: id => dispatch(fetchProject(id)),
  openMod: (type, options) => dispatch(openModal(type, options)),
  openCSMod: () => dispatch(openModal('CSopen')),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ProjectShow);
