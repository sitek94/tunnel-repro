const http = require('http')
const {Client} = require('pg')

const server = http.createServer((req, res) => {
  console.log(`[${new Date().toISOString()}] ${req.method} ${req.url}`)

  if (req.url === '/mocks') {
    const client = new Client({
      connectionString:
        process.env.DATABASE_URL ||
        'postgres://postgres:postgres@localhost:5432/postgres',
    })
    client
      .connect()
      .then(() => client.query('SELECT * FROM mocks'))
      .then(result => {
        console.log(`[DB] Returned ${result.rows.length} rows from mocks`)
        res.writeHead(200, {'Content-Type': 'application/json'})
        res.end(JSON.stringify(result.rows))
      })
      .catch(err => {
        console.error('[DB ERROR]', err)
        res.writeHead(500, {'Content-Type': 'text/plain'})
        res.end('DB error: ' + err.message)
      })
      .finally(() => client.end())
    return
  }

  res.writeHead(200, {'Content-Type': 'text/plain'})
  res.end('Hello from pure Node.js server!\n')
})

const PORT = process.env.PORT || 3000

server.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`)
})
