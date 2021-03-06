Broffeact-doc
=============
A simple brunch/coffeescript/reactjs documentation generator. Naive implementation.

## Features

- Grab used and unused modules
- Grab any components or functions that are exported
- Grab the propTypes of components
- Grab recognize function arguments
- Get comments above components or functions
- Displayed in an single generated html file
- Easy to use
- Multiple template possible
- Building some stats (total exported, % of commented code, unused required)

Installation
============

Copy/clone this package and launch python version 3 with broffeact in the directory where you want to
generate the documentation

`python broffeact`

Or use pypi to install it as an executable:

`pip install broffeact`

Usage
=====

Just use `broffeact -h` to check which options are available.

Code style
==========
In order to have a good documentation, I recommend you to use the following guidelines:

## Rules

- Exported module should in specific format using `exp = module.exports = {}`
- The comment should be above the component
- A component should be enclosed between `React.createClass` and `React.createFactory(...)`
- Module importation should be enclose into a conventional `M = {` and `}` object (with a new line after the bracket)

## Example of script.coffee
```coffeescript
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

  ...

exp.MyClass = React.createFactory(MyClass)

# This is a simple function that will make use
# of a secret operator !
exp.myfunc = (myarg1, myarg2) ->
  return myarg1 + myarg2
```

If you run **broffeact** over the previous example script.coffee, you should have the following output:

![Screenshot of generated documentation](https://bytebucket.org/kursion/broffeact-doc/raw/a902acb4ea2f8204e9bbfe6ea9f81a8c55c63796/example/screenshot.png)

Contributions
=============
Ferhat Elmas
