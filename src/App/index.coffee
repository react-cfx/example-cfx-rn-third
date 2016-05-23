echo = -> console.log arguments
{ assign } = Object
{
  RN
  cfx
  Comps
} = require 'cfx.rn'
{ Navigator } = Comps

Navigation = require '../Navigation/index'
Components =
  First: require '../components/First'

module.exports = cfx (props, state) ->

  Navigator Navigation.Config(
    Navigation.getRouter @
    , 'First'
    , Components
    , Navigation.Routers
    , state
  )
