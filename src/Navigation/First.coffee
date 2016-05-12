{ assign } = Object
{ RN } = require 'cfx.rn'
{ Navigator } = RN

module.exports = (state, Component) ->

  initialRoute:
    name: 'First'
    component: Component

  configureScene: ->
    Navigator.SceneConfigs.HorizontalSwipeJump

  renderScene: (router, navigator) ->

    Component = router.component

    if Component

      Component do ->
        assign {}
        , router.params
        , { navigator }
