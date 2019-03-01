import { connect } from 'react-redux';
import Searchbar from './searchbar';
import { fetchFilteredResults } from '../../actions/searchbar_actions';

const mapStateToProps = state => {
  // debugger
  return {
    titles: Object.values(state.entities.searchbar)
  };
};

const mapDispatchToProps = dispatch => {
  return {
    fetchFilteredResults: (string) => fetchFilteredResults(string)
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(Searchbar);