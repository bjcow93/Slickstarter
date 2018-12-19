import React from 'react';
import { Link } from 'react-router-dom';


const Navbar = ({ currentUser, openMod, closeModal }) => {
  const sessionLinks = () => (
    <header className="head">
      <div className="left"><p><Link to="/">Explore</Link></p>&nbsp;   &nbsp;<p><Link to="/">Start a project</Link></p></div>
      <div className="slick"><Link to="/"></Link></div>
      <div className="right">
        <div className="search-button">
          <Link to="/">Search</Link>
          <Link className="search-icon" to="/"></Link>
        </div>
        &nbsp;   &nbsp;
        <p className="signin">
          <Link to="/login">Sign in</Link>
        </p>
      </div>
    </header>
  );

  const personalGreeting = () => (
    <header className="head">
      <div className="left"><p><Link to="/">Explore</Link></p>&nbsp;   &nbsp;<p><Link to="/">Start a project</Link></p></div>
      <div className="slick"><Link to="/"></Link></div>      
      <div className="right">
        <div className="search-button">
          <Link to="/">Search</Link>
          <Link className="search-icon" to="/"></Link>
        </div>
        &nbsp;    &nbsp;
        {openMod}
      </div>
    </header>
  );

  return currentUser ? personalGreeting() : sessionLinks();
};


export default Navbar;