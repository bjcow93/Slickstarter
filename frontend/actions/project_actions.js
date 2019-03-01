import * as APIUtil from '../util/project_api_util';

export const RECEIVE_PROJECTS = 'RECEIVE_PROJECTS';
export const RECEIVE_PROJECT = 'RECEIVE_PROJECT';

export const receiveProjects = projects => ({
  type: RECEIVE_PROJECTS,
  projects,
});

export const receiveProject = payload => ({
  type: RECEIVE_PROJECT,
  payload,
});

export const fetchProjects = () => dispatch => (
  APIUtil.fetchProjects().then(projects => (
    dispatch(receiveProjects(projects))
  ))
);


export const fetchProject = (id) => (dispatch) => {
  return APIUtil.fetchProject(id).then(project => {
    dispatch(receiveProject(project));
  });
};

export const createProject = (project) => dispatch => (
  APIUtil.createProject(project).then(project => (
    dispatch(receiveProject(project))
  ))
);