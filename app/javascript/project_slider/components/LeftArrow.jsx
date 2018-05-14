// app/javascript/project_slider/components/LeftArrow.jsx

import React, { Component } from 'react';

const LeftArrow = (props) => {
  return (
    <div onClick={props.previousSlide} className='backArrow'>
      <i className='fa fa-arrow-left fa-2x' aria-hidden='true'></i>
    </div>
  );
}

export default LeftArrow;
