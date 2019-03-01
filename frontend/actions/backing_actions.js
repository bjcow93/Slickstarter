import * as APIUtil from '../util/backing_api_util';

export const RECEIVE_BACKING = 'RECEIVE_BACKING';


export const receiveBacking = payload => ({
  type: RECEIVE_BACKING,
  payload,
});


export const createBacking = (backing) => dispatch => (
  APIUtil.createBacking(backing).then(backing => (
    dispatch(receiveBacking(backing))
  ))
);