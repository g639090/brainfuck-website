const net = require('net')
const path = require('path')
const fs = require('fs')
const bf = require('brainless')

const PORT = process.env.PORT || 3000

const server = net.createServer(s => {
  s.on('data', req => {
    treq = req.toString()
    fs.readFile(path.join(__dirname, 'server.bf'), {encoding: 'utf8'}, (err, src) => {
      if (err) { throw err }
      const compiled = bf(src)
      socket.end(compiled)
    })
  })

  s.on('error', err => {
    throw err
  })
})

server.listen(PORT, () => {
  console.log(`listening on ${PORT}`)
})