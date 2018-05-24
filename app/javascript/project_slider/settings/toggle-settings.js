import React from 'react';

const ToggleSettings = ({ visible, toggle }) => {
  if (visible) {
    return <img src="/assets/settings-close.svg" className="settings-icon" onClick={toggle} />
  } else {
    return <img src="/assets/settings.svg" className="settings-icon" onClick={toggle} />
  }
}

export default ToggleSettings;
