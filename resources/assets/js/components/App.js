import React, { Component } from 'react';
import {BrowserRouter} from 'react-router-dom';
import ReactDOM from 'react-dom';
import Header from './Header';
import Main from './Main';
export default class App extends Component {
    render() {
        return (
            <div>
                <Header />
                <Main />
            </div>
        );
    }
}

if (document.getElementById('root')) {
    ReactDOM.render(<BrowserRouter basename="scripts/automate/blog-api/public/"><App /></BrowserRouter>, document.getElementById('root'));
}
