import { connect } from 'react-redux';

import ProjectIndex from './project_index';
import { fetchProjects } from '../../actions/project_actions';

const mapStateToProps = state => ({
  projects: Object.values(state.entities.projects)
});

const mapDispatchToProps = dispatch => ({
  fetchProjects: () => dispatch(fetchProjects())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ProjectIndex);