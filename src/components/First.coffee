{
  cfx
  Comps
} = require 'cfx.rn'
{
  View
  Text
  TouchableOpacity
} = Comps

Navigation = require '../Navigation/index'
Components =
  Second: require '../components/Second'

module.exports = cfx

  constructor: ->
    @state =
      id: 1
      user: null
    @

  pressButton: ->
    { navigator } = @props

    if navigator

      navigator.push(
        Navigation.getRouter @
        , 'Second'
        , Components
        , Navigation.Routers
        , @state
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
          onPress: @pressButton.bind @
        ,
          Text {}
          , "点我查询用户 id = #{@state.id}"
