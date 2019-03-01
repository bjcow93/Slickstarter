import merge from 'lodash/merge';
import { RECEIVE_RESULTS } from '../actions/searchbar_actions';

const searchbarReducer = (state = {}, action) => {
  Object.freeze(state);

  switch (action.type) {
    case RECEIVE_RESULTS:
      return action.results;
    default:
      return state;
  }
};

export default searchbarReducer;