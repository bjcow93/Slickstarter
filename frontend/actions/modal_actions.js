export const OPEN_MODAL = 'OPEN_MODAL';
export const CLOSE_MODAL = 'CLOSE_MODAL';
export const OPEN_CSMODAL = 'OPEN_CSMODAL';


export const openModal = (name, options) => {
  return {
    type: OPEN_MODAL,
    modal: {
      name,
      options
    }
  };
};

export const openCSModal = CSmodal => {
  return {
    type: OPEN_CSMODAL,
    CSmodal
  };
};

export const closeModal = () => {
  return {
    type: CLOSE_MODAL
  };
};
