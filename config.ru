require 'sinatra/base'
require './controllers/ApplicationController'
require './controllers/HomeController'
require './controllers/TweetController'

require './models/UserModel'
require './models/TweetModel'

map('/') {run ApplicationController}
map('/home') {run HomeController}
map('/tweets') {run TweetController}
