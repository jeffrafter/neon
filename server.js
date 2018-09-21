require('noodle-it')
const express = require('express')

const app = express()
const port = process.env.PORT || 3001

app.use(express.static('public'))

app.get('/', (req, res) => {
  res.sendfile('./index.html')
})

app.listen(port, () => console.log(`Listening on port ${port}`))
