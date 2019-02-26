import React, {Component} from 'react';
import { closeModal } from '../../actions/modal_actions';
import { connect } from 'react-redux';
import { logout } from '../../actions/session_actions';
import Select from 'react-select';
import { filterProjects } from '../../reducers/selectors';
import { Link } from 'react-router-dom';

import ProjectIndexItem from '../projects/project_index_item';



class Modal extends Component {
  constructor(props) {
    super(props);

    this.state = {
      title: "",
      letters: "",
      searchbar: []
    };

    this.handleClick = this.handleClick.bind(this);
    // this.updateLetters = this.updateLetters.bind(this);
  }

  handleClick(e) {
    e.preventDefault(),
    this.props.logout(),
    this.props.closeModal()
  };

  // handleRedirect(e) {
  //   e.preventDefault(),
  //   this.props.closeModal()
  // }

  update(property) {
    // debugger
    return e => this.setState({
      [property]: e.target.value,
      searchbar: this.props.titles3.filter(title => title.title.includes(e.target.value))
    });

  }

 

  // filterTitles() {
  //   return e => this.setState({
  //     searchbar: 
  //   })
  // }

  render () {    
    const { modal, closeModal, logout, currentUser, titles, titles2, titles3 } = this.props;
    const {title, titleObj, searchbar, letters} = this.state;
    var search
      if (letters.length == 0) { 
        search = <div></div> 
      } else { 
        // search = (<select className="selector-field" onChange={this.update('title')}>
        //   {searchbar.map(title => <option key={title.id} value={title.id}>{title.title}</option>)}
        // </select>)
        search = (<div className="selector-field">
        {searchbar.map(title => (
          <div className="rec-container" key={title.id}>
            <Link className="rec-i" onClick={closeModal} to={`/projects/${title.id}`}>{title.title}
              <img className="rec-img" src={title.image_url}></img>
            </Link>
            <ProjectIndexItem key={title.id} project={title} />
          </div>
        ))}
        </div>)
        // <div className="rec-container">
        //   <Link className="rec-i" to={`/projects/${this.grabProject(2, 'obj').id}`}><img className="rec-img" src={this.grabProject(2, 'obj').image_url}></img></Link>
        //   {this.grabProject(2)}
        // </div>
      }

    if (modal == "open") {
      return (
        <div className="modal-background" onClick={closeModal}>
          <div className="modal-section" onClick={e => e.stopPropagation()}>
            <div className="modal-section-a">{currentUser.name}</div>
            <div className="modal-section-b" onClick={e => e.stopPropagation()}>
              <p className="header-button">
                <button onClick={this.handleClick}>Log out</button>
              </p>
            </div>
          </div>
        </div>
      );

    } else if (modal == "search") {
      // debugger
      return (
        <div className="search-modal-background" onClick={closeModal}>
          <div className="search-modal-section">
            <div className="search-section-a" onClick={e => e.stopPropagation()}>
              <form className="search-form">
                {/* <div className="addfriendscont">
                <div className="addfriendlabel"> */}
                {/* <Select
                  className="search-field"
                  // className="basic-single"
                  classNamePrefix="select"
                  isClearable={true}
                  isSearchable={true}
                  value={titleObj}
                  name="color"
                  // theme={(theme) => ({
                  //   ...theme,
                  //   borderRadius: 0,
                  //   colors: {
                  //     ...theme.colors,
                  //     primary25: 'hotpink',
                  //     primary: 'black',
                  //   },
                  // })}
                  options={titles}
                  onChange={this.updateTitle}
                />   */}
                <input
                  type="text"
                  value={this.state.letters}
                  onChange={this.update("letters")}
                  className="search-field"
                  placeholder="Search by project title"
                  autoFocus
                />
                  {search}
              </form>
            </div>
            <div className="search-section-b">
              <div className="x-icon"></div>
            </div>
          </div>
        </div>
      )
    } else {
    return null;
    }
  }
}




const mapStateToProps = state => {
  const titles = filterProjects(Object.values(state.entities.projects))
  // debugger
  return {
    modal: state.ui.modal,
    currentUser: state.session.currentUser,
    titles: filterProjects(Object.values(state.entities.projects)),
    titles2: titles.map(title => title.value),
    titles3: Object.values(state.entities.projects)
  };
};

const mapDispatchToProps = dispatch => {
  return {
    closeModal: () => dispatch(closeModal()),
    logout: () => dispatch(logout())
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(Modal);