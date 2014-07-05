#Middleman Standard Template
A customized template for all the things I typically require when starting a site from scratch.
Standard template includes the following:

1. [prefixfree.min.js](http://leaverou.github.io/prefixfree/) - Because fuck vendor prefixes
2. A few extra directories:
  * `data` (local data)
  * `fonts` (webfonts)
  * `partials` (HTML/ERB)
3. A battle-ready SCSS stylesheet setup:
  * `styles.scss` which imports three partials:
    * `_font-face.scss` with @font-face syntax ready for your own fonts
    * `_reset.scss` which adds Paul Irish's [box-model fix](http://www.paulirish.com/2012/box-sizing-border-box-ftw/) to Eric Meyers' [CSS reset](http://meyerweb.com/eric/tools/css/reset/).
    * `_variables.scss` for variables
    * `_mixins.scss` for mixins


## 1. Add template to Middleman core
Copy `standard` folder and `standard.rb` into the Middleman's core template directory.

As of Middleman 3.3.3, the path to the template directory is: `/Library/Ruby/Gems/2.0.0/gems/middleman-core-3.3.3/lib/middleman-core/templates`

## 2. Update templates.rb
Open `templates.rb` in the `templates` directory and add the following line beneath the original templates list to register the standard template with Middleman:

`require 'middleman-core/templates/standard'`

The `templates.rb` file should now look similar to this:
```
...

# Local templates
# Sometimes HOME doesn't exist, in which case there's no point to local templates
require 'middleman-core/templates/local' if ENV['HOME']

# Barebones template
require 'middleman-core/templates/empty'

# Standard Template
require 'middleman-core/templates/standard'
```

## 3. Start new project with Standard template
In Terminal (or whatever command line thingy you use), navigate to the directory above where you want to start a new Middleman project and type the following: `middleman init name-of-project --template=standard`

Now, get to work! :coffee: :computer: :shipit:
