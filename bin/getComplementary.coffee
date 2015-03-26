async = require 'async'
uuid = require 'uuid'
minimist = require 'minimist'
prediction = require '../prediction'
args = minimist process.argv.slice 2

user =
  id: args.user

items = args.items.split ','

createUser = (user, cb) ->
  prediction.engine.sendQuery
    uid: user.id
    num: 3
    items: items
  .catch cb
  .then (res) ->
    cb null, res

createUser user, (err, res) ->
  console.error err if err?
  console.log 'Response', JSON.stringify(res, null, 2) if res?
  console.log 'Done'
  process.exit()