{ assign } = Object
{
  RN
  cfx
  Comps
} = require 'cfx.rn'
{ Navigator } = Comps

Navigation = require '../Navigation/index'
FirstComponent = require '../components/First'

module.exports = cfx (props, state) ->

  Navigator Navigation.First.apply @, [
    state
    FirstComponent
  ]
