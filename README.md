# film_finder

This quick prototype allows you to find your nearest cinema, and what films they're showing today.

## How does it work

When you go to it, you'll be asked to enter your postcode. Hitting the button will tell you your nearest cinema. You can click the link to load in all films showing there today, and the times those films are available.

## Setup

You should be able to set it up with a simple `git clone`, `bundle` and `rails s`.

There is no database requirement.

## API

This service uses the `moviesapi` here: http://moviesapi.herokuapp.com/

It uses Faraday to make the requests.

## Code

Most of the cool stuff is in the `app/services` folder. There are some really bare models too, but they're boring. The app uses unobtrusive JS to display the data and `slim` to template its only real view.

The two services have some functionality in common, so I refactored that into a base class.

## Tests

I added some RSpec tests covering the services and a basic feature spec to check the home page loads.

I used VCR to mock http requests to make testing the API calls more consistent.
