fetch = require 'node-fetch'
options = method: 'GET'

username = "admin"
password = "admin"
pimaticUrl = "localhost"
pimaticPort = 80
https = false

url = if https then "https://" else "http://" + "#{username}:#{password}@#{pimaticUrl}:#{pimaticPort}/api/devices"


fetch(url, options)
.then (res) ->
  unless res.ok
    console.log "Error: Response #{res.status} - #{res.statusText}"
    return null
  else
    return res.json()
.then (json) ->
  processJSON(json) if json?
.catch (err) ->
  console.log err


processJSON = ({devices}) ->
  for device in devices[0..5]
    console.log device

