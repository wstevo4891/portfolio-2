// app/javascript/project_slider/components/LeftArrow.jsx

import React from 'react';

const LeftArrow = ({ prevSlide, coolButtons }) => {
  return (
    <div className={coolButtons ? 'left-arrow cool-buttons' : 'left-arrow'} onClick={prevSlide}>
      <i className='fa fa-angle-left fa-3x' aria-hidden='true'></i>
    </div>
  );
}

export default LeftArrow;
