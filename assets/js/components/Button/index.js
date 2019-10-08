import React from "react"

export default ({ text, onPress }) => {
  return(
    <button 
      onClick={onPress}
      type='submit'
      style={{marginRight: 5, marginLeft: 5}}
    >
    {text}
  </button>);
};