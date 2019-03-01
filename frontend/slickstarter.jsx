import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
import {fetchProjects} from './actions/project_actions';

document.addEventListener('DOMContentLoaded', () => {
    let store;
    if (window.currentUser) {
        const preloadedState = {
            entities: {
                users: { [window.currentUser.id]: window.currentUser },
            },
            session: { id: window.currentUser.id, currentUser: window.currentUser }
        };
        store = configureStore(preloadedState);
        delete window.currentUser;
    } else {
        store = configureStore();
    }
    window.store = store;
    window.getState = store.getState;
    window.dispatch = store.dispatch;
    window.fetchProjects = fetchProjects;
    const root = document.getElementById('root');
    ReactDOM.render(<Root store={store} />, root);
});