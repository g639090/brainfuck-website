const net = require('net')
const fs = require('fs')
const path = require('path')
const brainfuck = require('brainfuck2000')

const PORT = process.env.PORT || 3000

const server = net.createServer((socket) => {
  socket.on('data', (req) => {
    req = req.toString()

    fs.readFile(path.resolve(__dirname, 'server.bf'), { encoding: 'utf8' }, (err, src) => {
      if (err) { throw err }

      const program = brainfuck(src)
      program.run(req)
      const res = program.resultString()

      socket.end(res)
    })
  })
})

server.on('error', (err) => {
  throw err
})

server.listen(PORT, () => {
  console.log(`opened server on ${PORT}`)
})