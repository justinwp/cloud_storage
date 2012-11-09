
-- implementation agnostic access http.request
-- require"cloud_storage.http".set request: -> print "hello!"

local _http

default = -> require "ssl.https"

get = ->
  _http = default! unless _http
  _http

set = (http) ->
  _http = http

{ :get, :set }
