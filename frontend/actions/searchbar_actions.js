import * as APIUtil from '../util/searchbar_api_util';
export const RECEIVE_RESULTS = 'RECEIVE_RESULTS';


export const receiveResults = results => ({
  type: RECEIVE_RESULTS,
  results,
});

export const fetchFilteredResults = (string) => (
  APIUtil.fetchFilteredResults(string).then(results => (
    dispatch(receiveResults(results))
  ))
);

