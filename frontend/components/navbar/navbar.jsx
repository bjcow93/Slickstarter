import React from 'react';
import { Link } from 'react-router-dom';



const Navbar = ({ currentUser, logout }) => {
  const sessionLinks = () => (
    <header className="head">
      <div className="left"><p><Link to="/">Explore</Link></p>&nbsp;   &nbsp;<p><Link to="/">Start a project</Link></p></div>
      <div className="title"><Link to="/">SLICKSTARTER</Link></div>
      <div className="right"><p><Link to="/">Search</Link></p>&nbsp;   &nbsp;<p><Link to="/login">Sign in</Link></p></div>
    </header>
  );

  const personalGreeting = () => (
    <header className="head">
      <div className="left"><p><Link to="/">Explore</Link></p>&nbsp;   &nbsp;<p><Link to="/">Start a project</Link></p></div>
      <div className="title"><Link to="/">SLICKSTARTER</Link></div>
      <div className="right"><p><Link to="/">Search</Link></p>&nbsp;   &nbsp;<p><button className="header-button" onClick={logout}>Log Out</button></p></div>
    </header>
  );

  return currentUser ? personalGreeting() : sessionLinks();
};


export default Navbar;

{/* <header className="head">
  <div className="left">Explore</div>
  <div className="title"><h1>SLICKSTARTER</h1></div>
  <div className="navbar">
    <NavbarContainer />
  </div>
</header> */}