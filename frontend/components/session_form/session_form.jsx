import React from 'react';

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      email: 'Email',
      password: 'Password',
      name: 'Name'
    };
    this.handleSubmit = this.handleSubmit.bind(this);
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

  renderErrors() {
    return (
      <ul>
        {this.props.errors.map((error, i) => (
          <li key={`error-${i}`}>
            {error}
          </li>
        ))}
      </ul>
    );
  }

  render() {
    if (this.props.formType === 'Sign up') {
      return (
        <div className="login-form-container">
          <form onSubmit={this.handleSubmit} className="login-form-box">
            <br />
            <p>Have an account? {this.props.navLink}</p>
            {this.props.formType}
            {this.renderErrors()}
            <div className="login-form">
              <br />
              <label>Name:
              <input type="text"
                  value={this.state.name}
                  onChange={this.update('name')}
                  className="login-input"
                />
              </label>
              <br />
              <label>Email:
                <input type="text"
                  value={this.state.email}
                  onChange={this.update('email')}
                  className="login-input"
                />
              </label>
              <br />
              <label>Password:
                <input type="password"
                  value={this.state.password}
                  onChange={this.update('password')}
                  className="login-input"
                />
              </label>
              <br />
              <input className="session-submit" type="submit" value={this.props.formType} />
            </div>
          </form>
        </div>
      );
    } else {
      return (
        <div className="login-form-container">
          <form onSubmit={this.handleSubmit} className="login-form-box">
            <br />
            <p>New to Slickstarter? {this.props.navLink}</p>
            {this.props.formType}
            {this.renderErrors()}
            <div className="login-form">
              <br />
              <label>Email:
                <input type="text"
                  value={this.state.email}
                  onChange={this.update('email')}
                  className="login-input"
                />
              </label>
              <br />
              <label>Password:
                <input type="password"
                  value={this.state.password}
                  onChange={this.update('password')}
                  className="login-input"
                />
              </label>
              <br />
              <input className="session-submit" type="submit" value={this.props.formType} />
            </div>
          </form>
        </div>
      );
    }
  }
}

export default SessionForm;
