predictionio = require 'predictionio-driver'

server = 'http://prediction.fractal.im'
key = 'u2Py0MJ6JEqCR9GeaPlQLLvfSk6qGfbB2cF0Ch8qt4JNsKJF2LWDtXZXDrYZ6lYC'

module.exports =
  engine: new predictionio.Engine
    url: "#{server}:8000"
    appId: 1
    accessKey: key
  events: new predictionio.Events
    url: "#{server}:7070"
    appId: 1
    accessKey: key