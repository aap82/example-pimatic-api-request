#@lschip
#
#The second Pi is connected to your LAN through wifi though, correct? As the others have mentioned, you can simply grab the info via an http call.
#
#Also, is there a reason to store the same information (albeit transformed) in a MySQL db on the second pi? MySQL is highly resource intensive and not a great idea to run on an rPi.

fetch = require 'node-fetch'

username = ""
password = ""
pimaticUrl = ""
pimaticPort = 80
https = false

url = if https then "https://" else "http://"
url = url + "#{pimaticUrl}:#{pimaticPort}"


