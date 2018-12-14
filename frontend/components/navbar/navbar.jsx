import React from 'react';
import { Link } from 'react-router-dom';



const Navbar = ({ currentUser, logout }) => {
  const sessionLinks = () => (
    <header className="head">
      <div className="left"><p><Link to="/">Explore</Link></p>&nbsp;   &nbsp;<p><Link to="/">Start a project</Link></p></div>
      <Link className="title" to="/">SLICKSTARTER</Link>
      <div className="right">
        <div className="search-button"><Link to="/">Search</Link>
          <Link className="search-icon" to="/"></Link>
        </div>
        &nbsp;    &nbsp;
        <p className="signin">
          <Link to="/login">Sign in</Link>
        </p>
      </div>
    </header>
  );

  const personalGreeting = () => (
    <header className="head">
      <div className="left"><p><Link to="/">Explore</Link></p>&nbsp;   &nbsp;<p><Link to="/">Start a project</Link></p></div>
      <Link className="title" to="/">SLICKSTARTER</Link>
      <div className="right">
        <div className="search-button"><Link to="/">Search</Link>
          <Link className="search-icon" to="/"></Link>
        </div>
        &nbsp;    &nbsp;
        <p className ="header-button">
          <button onClick={logout}>Log Out</button>
        </p>
      </div>
    </header>
  );

  return currentUser ? personalGreeting() : sessionLinks();
};


export default Navbar;