const express = require('express')
const app = express()
const port = 3306

app.get('/', (req, res) => {
  res.send("well done, you are connected to the db!")
})

app.listen(port, () => {
  console.log(`DB running!`)
})