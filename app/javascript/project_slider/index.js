// app/javascript/project_slider/index.js

import React from 'react';
import ReactDOM from 'react-dom';
import { Provider } from 'react-redux';
import { createStore, applyMiddleware, combineReducers } from 'redux';

import reducers from './reducers';
import reduxThunk from 'redux-thunk';
const createStoreWithMiddleware = applyMiddleware(reduxThunk)(createStore);
const store = createStoreWithMiddleware(reducers);

import Slider from './components/Slider';

const projectSlider = document.querySelector('#project_slider');

ReactDOM.render (
  <Provider store={store}>
    <Slider projectId={projectSlider.dataset.project} />
  </Provider>,
  projectSlider
)
