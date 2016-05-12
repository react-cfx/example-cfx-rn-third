{
  cfx
  Comps
} = require 'cfx.rn'
{
  View
  Text
  TouchableOpacity
} = Comps

SecondComponent = require '../components/Second'
Navigation = require '../Navigation/index'

module.exports = cfx

  constructor: ->
    @state =
      id: 1
      user: null
    @

  _pressButton: ->
    { navigator } = @props

    if navigator

      navigator.push(
        Navigation.Second.apply @, [
          @state
          SecondComponent
        ]
      )

  render: ->

    if @state.user

      View {}
      ,
        Text {}
        , "用户信息: #{JSON.stringify @state.user}"

    else

      View style:
        backgroundColor: '#c7c7c7'
        flex: 1
      ,
        Text {}
        , 'FirstComponent'
      ,
        TouchableOpacity
          onPress: @_pressButton.bind @
        ,
          Text {}
          , "点我查询用户 id = #{@state.id}"
