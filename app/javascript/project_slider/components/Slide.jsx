// app/javascript/project_slider/components/slide.jsx

import React from 'react';

const Slide = ({ image }) => {
  const background = {
    backgroundImage: `url(${image.url})`,
    backgroundSize: 'cover',
    backgroundRepeat: 'no-repeat',
    backgroundPosition: '50% 60%'
  }

  return <div className='slide' style={background}></div>
}

export default Slide;
