import { connect } from 'react-redux';

import CategoryShow from './categories';
import { fetchCategory } from '../../actions/category_actions';

const mapStateToProps = (state, ownProps) =>  {
  const category = state.entities.categories[ownProps.match.params.categoryId];
  return {
    category
  };
};

const mapDispatchToProps = dispatch => ({
  fetchCategory: id => dispatch(fetchCategory(id)),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(CategoryShow);