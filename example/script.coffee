exp = module.exports = {} # Only once at the beginning of your coffeescript file
M = {
  fmt: requires('utils/fmt')
  tools: requires('tools')
}

# My little comment about this class
# which should start with a '#' (sharp) symbol
MyClass = React.createClass
  propTypes:
    userInfo: React.PropTypes.object.isRequired
    display: React.PropTypes.string


exp.MyClass = React.createFactory(MyClass)

# This is a simple function that will make use
# of a secret operator !
exp.myfunc = (myarg1, myarg2) ->
  return myarg1 + myarg2
