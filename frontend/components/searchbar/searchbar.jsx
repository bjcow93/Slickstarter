import React from 'react';
import { Link } from 'react-router-dom';

class Searchbar extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      letters: "",
      searchbar: []
    };
  }



  // handleClose() {
  //   this.setState({
  //     letters: ""
  //   });
  //   this.props.closeModal();
  // }

  componentDidUpdate(prevProps, prevState) {
    // debugger
    if (prevState.letters !== this.state.letters || prevProps.titles.length !== this.props.titles.length) {
      this.props.fetchFilteredResults(this.state.letters);

      this.setState({
        letters: this.state.letters,
        searchbar: this.props.titles
      });
    }

    // window.scrollTo(0, 0);
  }

  update(property) {
    // this.props.fetchFilteredProjects(this.state.letters);
    return e => this.setState({
      [property]: e.target.value,
      // searchbar: this.props.titles3.filter(title => title.title.toLowerCase().includes(e.target.value.toLowerCase()))
      searchbar: this.props.titles
    });

    this.props.fetchFilteredProjects(this.state.letters);

  }

  render() {
    // debugger
    const { searchbar, letters } = this.state;

    var search
    if (letters.length == 0) {
      search = <div></div>
    } else {
      // debugger
      search = (<div className="selector-field">
        {searchbar.map(title => (
          <Link className="search-container" onClick={this.props.closeModal} key={title.id} to={`/projects/${title.id}`}>
            <img className="search-img" src={title.image_url}></img>
            <div className="search-result">
              <div className="search-link">
                {title.title}
              </div>
              <div className="author">By&nbsp;<p className="author-link">{title.user.name}</p></div>
            </div>
          </Link>
        ))}
      </div>)
    }

    return (
      <div className="search-modal-background" onClick={this.props.closeModal}>
        <div className="search-modal-section">
          <div className="search-section-a" onClick={e => e.stopPropagation()}>
            <form className="search-form">
              <input
                type="text"
                value={this.state.letters}
                onChange={this.update("letters")}
                className="search-field"
                placeholder="Search by project title"
                autoFocus
              />
            </form>
          </div>
          <div className="search-section-b">
            <div className="x-icon"></div>
          </div>
        </div>
        {search}
      </div>
    )
  }
}

export default Searchbar;