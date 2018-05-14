// app/javascript/project_slider/index.js

import React from 'react';
import ReactDOM from 'react-dom';
import { App } from './components/App';


const project_slider = document.querySelector('#project_slider');
console.log(project_slider);

ReactDOM.render(
    <App />,
    project_slider
);