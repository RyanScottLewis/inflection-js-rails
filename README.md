# inflection-js-rails

ActiveSupport style inflections for client-side development for the Rails Asset Pipeline

## Installation

In your Gemfile, add this line:

```ruby
group :assets do
  gem 'inflection-js-rails'
end
```

Now run `bundle install`

### Rails 3.0

This gem adds a single generator to Rails 3, `inflectionjs:install`.

Running the generator will copy over `inflection.js` to your assets to `public/javascript/`.

### Rails 3.1 or greater

For Rails 3.1 and greater, the files will be added to the asset pipeline and available for you to use.

Simply the following to `app/assets/javascripts/application.js`:

    //= require inflection

## Javascript String Functions

The following functions will be available to each String instance:

    String.pluralize(plural) == String
      renders a singular English language noun into its plural form
      normal results can be overridden by passing in an alternative
    
    String.singularize(singular) == String
      renders a plural English language noun into its singular form
      normal results can be overridden by passing in an alterative
    
    String.camelize(lowFirstLetter) == String
      renders a lower case underscored word into camel case
      the first letter of the result will be upper case unless you pass true
      also translates "/" into "::" (underscore does the opposite)
    
    String.underscore() == String
      renders a camel cased word into words seperated by underscores
      also translates "::" back into "/" (camelize does the opposite)
    
    String.humanize(lowFirstLetter) == String
      renders a lower case and underscored word into human readable form
      defaults to making the first letter capitalized unless you pass true
    
    String.capitalize() == String
      renders all characters to lower case and then makes the first upper
    
    String.dasherize() == String
      renders all underbars and spaces as dashes
    
    String.titleize() == String
      renders words into title casing (as for book titles)
    
    String.demodulize() == String
      renders class names that are prepended by modules into just the class
    
    String.tableize() == String
      renders camel cased singular words into their underscored plural form
    
    String.classify() == String
      renders an underscored plural word into its camel cased singular form
    
    String.foreign_key(dropIdUbar) == String
      renders a class name (camel cased singular noun) into a foreign key
      defaults to seperating the class from the id with an underbar unless
      you pass true
    
    String.ordinalize() == String
      renders all numbers found in the string into their sequence like "22nd"

## Props

I didn't write any of the Javascript included within inflection-js.  
All props goto Ryan Schuft.

[Original project URL](http://code.google.com/p/inflection-js/)

## Contributing

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2012 Ryan Lewis. See LICENSE for details.