import React from 'react'
import ReactDOM from 'react-dom'
import SwaggerUI from 'swagger-ui-react';

import "swagger-ui-react/swagger-ui.css"

const Docs = () => {
  return <SwaggerUI url="http://localhost:3000/docs"/>;
}
document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <Docs/>,
    document.body.appendChild(document.createElement('div')),
  )
})
