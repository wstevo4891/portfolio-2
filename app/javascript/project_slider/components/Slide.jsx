// app/javascript/project_slider/components/slide.jsx

import React, { Component } from 'react';

const Slide = ({ image }) => {
  const background = {
    backgroundImage: `url(${image})`,
    backgroundSize: 'cover',
    backgroundRepeat: 'no-repeat',
    backgroundPosition: '50% 60%'
  }

  return <div className='project-slide' style={background}></div>
}

export default Slide;
