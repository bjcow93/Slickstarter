import { combineReducers } from 'redux';
import projects from './projects_reducer';
import users from './users_reducer';

export default combineReducers({
  users,
  projects
});