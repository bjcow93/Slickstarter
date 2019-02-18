import { OPEN_MODAL, OPEN_CSMODAL, CLOSE_MODAL } from '../actions/modal_actions';

export default function modalReducer(state = null, action) {
  switch (action.type) {
    case OPEN_MODAL:
      return action.modal;
    case OPEN_CSMODAL:
      return action.CSmodal;
    case CLOSE_MODAL:
      return null;
    default:
      return state;
  }
}
