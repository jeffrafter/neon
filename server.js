require('noodle')
const express = require('express')

const app = express()
const port = process.env.PORT || 3001


app.get('/', (req, res) => {
  console.log("Sending the index.html")
  res.sendfile('./index.html')
})

app.listen(port, () => console.log(`Listening on port ${port}`))
