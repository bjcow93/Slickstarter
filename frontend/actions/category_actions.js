import * as APIUtil from '../util/category_api_util';

export const RECEIVE_CATEGORY = 'RECEIVE_CATEGORY';

export const receiveCategory = payload => ({
  type: RECEIVE_CATEGORY,
  payload,
});

export const fetchCategory = (id) => (dispatch) => {
  return APIUtil.fetchCategory(id).then(category => {
    dispatch(receiveCategory(category));
  });
};

