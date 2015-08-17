# Formatting times in the past!

A stakeholder has asked for some new functionality which the standard Rails
`DateHelper`s don't provide (the closest is [`#time_ago_in_words`](http://api.rubyonrails.org/classes/ActionView/Helpers/DateHelper.html#method-i-time_ago_in_words))
which isn't quite right.

## Specifications

As a user I'd like to see `DateTime`s in the past in a human readable and
parseable form which is accurate to the rounded minute:

* 29 seconds ago produces "In the last minute"
* 30 seconds ago produces "1 minute ago"
* 2 minutes 0 seconds ago produces "2 minutes ago"
* 2 minutes 31 seconds ago produces "3 minutes ago"
* 1 hour 3 minutes ago produces "1 hour, 3 minutes ago"
* 3 days, 1 hour, and 5 minutes ago produces "3 days, 1 hour, 5 minutes ago"
* 1 month, 2 days, and 3 hours ago produces "1 month, 2 days, 3 hours ago"

Assume all times are in a fixed Time-Zone (probably UTC).

## Development

* Clone this repo
* Install dependencies: `bundle install`
* Ensure the tests run (at least one should pass): `bundle exec rspec`
* Leverage [ActiveSupport Core Extensions](http://guides.rubyonrails.org/active_support_core_extensions.html)
  to implement and test the `TimeAgoFormatter` class to output a human
  readable, minute accurate, string representation of a DateTime in the past.
