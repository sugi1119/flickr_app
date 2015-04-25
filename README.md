# Flickr Photo Search App

This web application uses Flickr API to allow users to search photos from Flickr. If the user clicks on a search result, they can see a larger sized image.
[Demo](https://enigmatic-forest-5608.herokuapp.com/)

## Ruby and Rails version
Ruby version: ruby 2.0.0
Rails version: rails 4.2.0

## GEMs
Database:
  * Postgresql
Test:
  * RSPEC, Factorygirl, Capybara
API:
  * FrickRaw flickr API for ruby
  * Figaro Authenticate API keys
  * Will_paginate for pagination
  * font-awsome-rails for icon
Development:
  * pry-rails
  * better-errors
  * binding_of_caller


## Code Example
1. will_paginate
In config/initializers/will_pagenate_array.rb
Add below for will pagenate for array.
`require 'will_paginate/array'`

2. Frickraw
  1. In app/controllers/helpers/photos_helber.rb
   Call flickraw and also handle flickr API keys which authenticate by Figaro

```
require 'flickraw'

FlickRaw.api_key       = ENV["API_KEY"]
FlickRaw.shared_secret = ENV["SHARED_SECRET"]
flickr.access_token =   ENV["ACCESS_TOKEN"]
flickr.access_secret = ENV["ACCESS_SECRET"]
```


  2. Create new instance with FrickRaw::Flickr for users
`flickr = FlickRaw::Flickr.new`


3. Figaro
Figaro creats application.yml which is stored API keys (access token, secret token, API key, SECRET key). Make sure the file name include in .gitignore
```
# Ignore application configuration
/config/application.yml
```


4. Model
Create photo model with ActiveModel::Model
In ActiveModel:: Model, it handle attributes.

## API Documentation/ References
  * [FrickRaw documentation: http://hanklords.github.io/flickraw/](http://hanklords.github.io/flickraw/)
  * [FrickRaw gem: https://github.com/hanklords/flickraw](https://github.com/hanklords/flickraw)
  * [Frickr: https://www.flickr.com/services/](https://www.flickr.com/services/)
  * [Figaro: https://github.com/laserlemon/figaro](https://github.com/laserlemon/figaro)
  * [Will_paginate: https://github.com/mislav/will_paginate](https://github.com/mislav/will_paginate)

## Tests
Using RSPEC_rails, Factory_girl_rails, and capybara 2.4.0.
In terminal, type command bandle exec rspec
Model test, Controller test, Route test are done.



