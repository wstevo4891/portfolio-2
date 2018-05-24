// app/javascript/project_slider/components/RightArrow.jsx

import React from 'react';

const RightArrow = ({ nextSlide, coolButtons }) => {
  return (
    <div className={coolButtons ? 'right-arrow cool-buttons' : 'right-arrow'} onClick={nextSlide}>
      <i className='fa fa-angle-right fa-3x' aria-hidden='true'></i>
    </div>
  );
}

export default RightArrow;
