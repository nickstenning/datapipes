dp = require('./lib')

pipeline = new dp.Pipeline()
  .do(dp.parse.json)
# .then(dp.util.delay 1000)
  .then(dp.util.sample 0.1)
  .then(dp.util.log)

i = 0

while i < 100
  pipeline.take('{"number": ' + i + '}')
  ++i
