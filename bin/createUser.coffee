async = require 'async'
uuid = require 'uuid'
minimist = require 'minimist'
prediction = require '../prediction'
args = minimist process.argv.slice 2

user =
  id: uuid.v4()
  name: args.name
  age: args.age

createUser = (user, cb) ->
  prediction.events.createUser
    uid: user.id
    properties: user
  .catch cb
  .then (res) ->
    cb null, res

createUser user, (err, res) ->
  console.error err if err?
  console.log 'User ID:', res.eventId if res?
  console.log 'Done'
  process.exit()