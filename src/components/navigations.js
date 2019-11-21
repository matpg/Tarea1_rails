import React, { Component } from 'react';

class Navigation extends Component {
  render() {
    return (
    <nav className="navbar navbar-dark bg-dark">
      <a href="http://localhost:3000/" className="text-white">
        {
          // here you can use the JavaScript language totally
          //like 2 + 4
          this.props.title
        }
      </a>
    </nav>
    )
  }
}

export default Navigation;
