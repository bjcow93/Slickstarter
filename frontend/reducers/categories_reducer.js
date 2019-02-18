import merge from 'lodash/merge';
import { RECEIVE_CATEGORY } from '../actions/category_actions';

const categoriesReducer = (state = {}, action) => {
  Object.freeze(state);

  let category;

  switch (action.type) {
    case RECEIVE_CATEGORY:
      category = action.payload;
      return merge({}, state, { [category.id]: category });
    default:
      return state;
  }
};

export default categoriesReducer;
