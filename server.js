require('noodle')
const express = require('express')

const app = express()
const port = process.env.PORT || 3001


app.get('/', (req, res) => {
  console.log("=>>>>> cooler kids")
  res.sendfile('./index.html')
})

app.listen(port, () => console.log(`Listening on port ${port}`))
