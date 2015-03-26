async = require 'async'
uuid = require 'uuid'
minimist = require 'minimist'
prediction = require '../prediction'
args = minimist process.argv.slice 2

user =
  id: args.user

item =
  id: args.product

createUser = (user, cb) ->
  prediction.events.createAction
    event: args.event
    uid: user.id
    iid: item.id
    eventTime: new Date().toISOString()
  .catch cb
  .then (res) ->
    cb null, res

createUser user, (err, res) ->
  console.error err if err?
  console.log 'Event ID:', res.eventId if res?
  console.log 'Done'
  process.exit()