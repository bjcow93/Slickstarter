import React from 'react';
import NavbarContainer from './navbar/navbar_container';
import LoginFormContainer from './session_form/login_form_container';
import SignupFormContainer from './session_form/signup_form_container';
import { AuthRoute } from '../util/route_util';

const App = () => (
  <div>
    <header>
      <h1>Slickstarter</h1>
      <NavbarContainer />
    </header>

    <AuthRoute exact path="/login" component={LoginFormContainer} />
    <AuthRoute exact path="/signup" component={SignupFormContainer} />
  </div>
);

export default App;