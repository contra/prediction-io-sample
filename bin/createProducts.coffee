async = require 'async'
prediction = require '../prediction'

groceries = require '../data/groceries'
hardware = require '../data/hardware'
data = groceries.concat hardware

save = (product, cb) ->
  body =
    iid: product.id
    properties: product
    eventTime: new Date().toISOString()

  prediction.events.createItem(body)
    .catch cb
    .then -> cb()

async.forEachSeries data, save, (err) ->
  console.error err if err?
  console.log 'Done'
  process.exit()