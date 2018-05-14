// app/javascript/project_slider/components/RightArrow.jsx

import React, { Component } from 'react';

const RightArrow = (props) => {
  return (
    <div onClick={props.nextSlide} className='nextArrow'>
      <i className='fa fa-arrow-right fa-2x' aria-hidden='true'></i>
    </div>
  );
}

export default RightArrow;
