import React from 'react';
import NavbarContainer from './navbar/navbar_container';
import LoginFormContainer from './session_form/login_form_container';
import SignupFormContainer from './session_form/signup_form_container';
import { AuthRoute, ProtectedRoute } from '../util/route_util';
import { Route, Switch } from 'react-router-dom';
import Modal from './modal/modal_container';
import ProjectIndexContainer from './projects/project_index_container';
import ProjectShowContainer from './projects/project_show_container';
import ProjectFormContainer from './projects/project_form_container';
import CategoriesContainer from './categories/categories_container';
// import SearchbarContainer from './searchbar/searchbar_container';

const App = () => (
  <div>
    <Modal />
    <NavbarContainer />
    <Route exact path="/" component={ProjectIndexContainer} />
    <Switch>
      <AuthRoute exact path="/login" component={LoginFormContainer} />
      <AuthRoute exact path="/signup" component={SignupFormContainer} />
      <ProtectedRoute exact path="/projects/new" component={ProjectFormContainer} />
      {/* <Route exact path="/projects/search" component={SearchbarContainer} /> */}
      <Route path="/projects/:projectId" component={ProjectShowContainer} />
      <Route path="/categories/:categoryId" component={CategoriesContainer} />
    </Switch>
  </div>
);

export default App;