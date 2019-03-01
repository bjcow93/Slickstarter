import merge from 'lodash/merge';
import {RECEIVE_BACKING} from '../actions/backing_actions';

const backingsReducer = (state = {}, action) => {
  Object.freeze(state);

  let backing;

  switch(action.type) {
    case RECEIVE_BACKING:
      backing = action.payload;
      return merge({}, state, { [backing.id]: backing});
    default:
    return state;
  }
};

export default backingsReducer;