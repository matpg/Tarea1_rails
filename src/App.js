import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import TodoForm from './components/Todo_form.js'
// if you want to import some componnent you have to
//import Navigation from './components/navigations.js'
import { todos } from './to_do.json'
//console.log(todos);

class App extends Component {
  constructor(){
    super();
    this.state = {
      //title: 'Aplicacion de Tareas',
      //num_tareas: 10
      todos
    };
    this.handleAddTodo = this.handleAddTodo.bind(this)
  }

  handleAddTodo(todo) {
    this.setState({
      todos: [... this.state.todos, todo]
    })
  }

  removeTodo(index){

    if(window.confirm('Are you sure you want to delete it?'))
    {
      this.setState({
        todos: this.state.todos.filter((e, i) => {
          return i != index
        })
      })
    }
  }

  render() {
    const todos = this.state.todos.map((todo, i) => {
      return (
        //this is for the column size and position
        <div className="col-md-4" key={i}>
          <div className="card mt-4">
            <div className="card-header">
              <h3>{todo.title}</h3>
              <span className="badge badge-pill badge-danger ml-2">
                {todo.prio}
              </span>
            </div>
            <div className="card-body">
              <p>{todo.desc}</p>
              <p><mark>{todo.responsible}</mark></p>
            </div>
            <div className="card-footer">
              <button
                className="btn btn-danger"
                onClick={this.removeTodo.bind(this, i)}>
                  Delete
                </button>
            </div>
          </div>
        </div>

      )
    })
    return (
      <div className="App">
        {
          //<Navigation title="Tasks to-do"></Navigation>
          //<Navigation title="Tasks done"></Navigation>
        }
        <nav className="navbar navbar-dark bg-dark">
          <a href="http://localhost:3000/" className="text-white">
          {//you can use this type of format to use the class props
            //{this.state.title} - {this.state.num_tareas}
          }
          Tasks
          <span className="badge badge-pill badge-light ml-2">
            {this.state.todos.length}
          </span>
          </a>
        </nav>
        <div className="container">
          <div className="row mt-4">
            <div className="col-md-3">
              <img src={logo} className="App-logo" alt="logo" />
              <TodoForm onAddTodo={this.handleAddTodo}></TodoForm>
            </div>
            <div className="col-md-9">
              <div className="row">
                { todos }
              </div>
            </div>
          </div>
        </div>
        <header className="App-header"></header>
      </div>
    );
  }
}

export default App;
