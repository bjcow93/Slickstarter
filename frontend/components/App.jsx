import React from 'react';
import NavbarContainer from './navbar/navbar_container';
import LoginFormContainer from './session_form/login_form_container';
import SignupFormContainer from './session_form/signup_form_container';
import { AuthRoute, ProtectedRoute } from '../util/route_util';
import { Route, Switch } from 'react-router-dom';
import Modal from './modal/modal';
import ProjectIndexContainer from './projects/project_index_container';
import ProjectShowContainer from './projects/project_show_container';

const App = () => (
  <div>
    <Modal />
    <NavbarContainer />
    <Route exact path="/" component={ProjectIndexContainer} />
    <Route path="/projects/:projectId" component={ProjectShowContainer} />
    <Switch>
      <AuthRoute exact path="/login" component={LoginFormContainer} />
      <AuthRoute exact path="/signup" component={SignupFormContainer} />
      {/* <Route exact path="/" component={SearchContainer} /> */}
    </Switch>
  </div>
);

export default App;