import { connect } from 'react-redux';

import ProjectShow from './project_show';
import { fetchProject } from '../../actions/project_actions';
import { openCSModal, closeModal } from '../../actions/modal_actions';


const mapStateToProps = (state, ownProps) => {
  const project = state.entities.projects[ownProps.match.params.projectId];
  return {
    project,
  };
};

const mapDispatchToProps = dispatch => ({
  fetchProject: id => dispatch(fetchProject(id)),
  openCSMod: () => dispatch(openCSModal('CSopen')),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ProjectShow);
