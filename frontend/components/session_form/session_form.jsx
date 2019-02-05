import React from 'react';

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      email: '',
      password: '',
      name: ''
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleDemoLogin = this.handleDemoLogin.bind(this);
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = Object.assign({}, this.state);
    this.props.processForm(user);
  }

  handleDemoLogin(e) {
    e.preventDefault();

    this.props.processForm({
      email: "demouser@email.com",
      name: "Demo User",
      password: "password"
    });
  }

  renderErrors() {
    if (this.props.errors.length === 0) return (<div></div>);
    return (
      <div className="errors">
      <ul>
        {this.props.errors.map((error, i) => (
          <li className='err' key={`error-${i}`}>
            {error}
          </li>
        ))}
      </ul>
      </div>
    );
  }


  render() {
    if (this.props.formType === 'Sign up') {
      return (
        <div className="login-form-container">
          <form onSubmit={this.handleSubmit} className="login-form-box">
            <div className="form-above">Have an account?&nbsp;&nbsp;<p onClick={this.props.resetErrors}>{this.props.navLink}</p></div>
            <fieldset className="form-fieldset">
              <h1>{this.props.formType}</h1>
              <br />
              {this.renderErrors()}
              <br />
              <div className="login-form">
                <div className="input">
                  <input type="text"
                      value={this.state.name}
                      onChange={this.update('name')}
                      className="login-input"
                      placeholder="Name"
                    />
                </div>
                <div className="input">
                  <input type="email"
                    value={this.state.email}
                    onChange={this.update('email')}
                    className="login-input"
                    placeholder="Email"
                  />
                </div>
                <div className="input">
                  <input type="password"
                    value={this.state.password}
                    onChange={this.update('password')}
                    className="login-input"
                    placeholder="Password"
                  />
                </div>
                <br />
                <div className="submit">
                  <input className="session-submit" type="submit" value="Create Account" />
                </div>
              </div>
            </fieldset>
          </form>
        </div>
      );
    } else {
      return (
        <div className="login-form-container">
          <form onSubmit={this.handleSubmit} className="login-form-box">
            <fieldset className="form-fieldset">
              <h1>{this.props.formType}</h1>
              <br />
              {this.renderErrors()}
              <br />
              <div className="login-form">
                <div className="input">
                  <input type="email"
                    value={this.state.email}
                    onChange={this.update('email')}
                    className="login-input"
                    placeholder="Email"
                  />
                </div>
                <div className="input">
                  <input type="password"
                    value={this.state.password}
                    onChange={this.update('password')}
                    className="login-input"
                    placeholder="Password"
                  />
                </div>
                <br />
                <div className="submit">
                  <input className="session-submit" type="submit" value="Log me in!" />
                </div>
                  <br />
                <div className="submit">
                  <input onClick={this.handleDemoLogin} className="session-submit" type="submit" value="Demo Login" />
                </div>
              </div>
            </fieldset>
            <div className="form-below">New to Slickstarter?&nbsp;&nbsp;<p onClick={this.props.resetErrors}>{this.props.navLink}</p></div>
          </form>
        </div>
      );
    }
  }
}

export default SessionForm;
