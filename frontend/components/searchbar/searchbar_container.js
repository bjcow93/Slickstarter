import { connect } from 'react-redux';
import Searchbar from './searchbar';

const mapStateToProps = state => {
  return {
    titles3: Object.values(state.entities.projects)
  };
};

const mapDispatchToProps = dispatch => {
  return {
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(Searchbar);