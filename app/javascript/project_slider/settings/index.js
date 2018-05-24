// app/javascript/project_slider/settings/index.js

import React, { Component } from 'react';
import { connect } from 'react-redux';

import * as actions from '../actions/settings';
import Switch from 'react-toggle-switch';

class Settings extends Component {

  render() {
    const {
      visible,
      showDots,
      coolButtons,
      toggleSetting,
      toggleAutoplay,
      autoplay
    } = this.props

    if(!visible) return null

    return (
      <div className="settings">
        <div className="menu">

          <div className="setting">
            <div className="text">Show Dots</div>
            <Switch onClick={() => toggleSetting('showDots')} on={showDots} />
          </div>

          <div className="setting">
            <div className="text">Cool Buttons</div>
            <Switch onClick={() => toggleSetting('coolButtons')} on={coolButtons} />
          </div>

          <div className="setting">
            <div className="text">Autoplay</div>
            <Switch onClick={toggleAutoplay} on={autoplay} />
          </div>

        </div>
      </div>
    )
  }
}

const mapStateToProps = ({ settings }) => {
  return {
    showDots: settings.showDots,
    coolButtons: settings.coolButtons
  }
}

export default connect(mapStateToProps, actions)(Settings)
