echo = -> console.log arguments
{ assign } = Object
{ RN } = require 'cfx.rn'
{ SceneConfigs } = RN.Navigator

getComponent = (compObj, assignObj) ->
  unless assignObj then compObj
  else
    assign {}, compObj
    , assignObj

Routers =

  getFirst: (self, compObj, state) ->
    getComponent compObj

  getSecond: (self, compObj, state) ->
    getComponent compObj
    ,
      params:
        id: state.id
        getUser: (
          (user) ->
            @setState user: user
        ).bind self

getRouter = (self, routerName, Components, Routers, state) ->
  Routers["get#{routerName}"] self
  ,
    name: routerName
    component: Components[routerName]
  , state

Config = (initialRoute) ->

  initialRoute: initialRoute

  configureScene: ->
    SceneConfigs.HorizontalSwipeJump

  renderScene: (router, navigator) ->

    { component } = router

    if component

      component do ->

        assign {}
        , router.params
        , { navigator }

module.exports = {
  Routers
  getRouter
  Config
}
