SecondComponent = require '../components/Second'

module.exports = (state, Component) ->

  name: 'Second'
  component: Component

  params:
    id: state.id
    getUser: (
      (user) ->
        @setState user: user
    ).bind @
