import merge from 'lodash/merge';
import { RECEIVE_PROJECTS, RECEIVE_PROJECT } from '../actions/project_actions';

const projectsReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_PROJECTS:
      return action.projects;
    case RECEIVE_PROJECT:
      let project = action.payload.project;
      return merge({}, state, { [project.id]: project });
    default:
      return state;
  }
};

export default projectsReducer;
