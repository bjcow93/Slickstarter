import { connect } from 'react-redux';

import { createProject } from '../../actions/project_actions';
import ProjectForm from './project_form';

const mapStateToProps = () => ({
  // lat: new URLSearchParams(location.search).get('lat'),
  // lng: new URLSearchParams(location.search).get('lng')
});

const mapDispatchToProps = dispatch => ({
  createProject: project => dispatch(createProject(project))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ProjectForm);
