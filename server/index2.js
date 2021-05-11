const express = require('express')
const fetch = require('node-fetch');
const app = express()
const port = 80

app.get('/', async (req, res) => {
  let time = '';
  //  http://host.docker.internal:3306
  //  http://swimming-pool:3306
  await fetch('http://localhost:3306')
    .then(res => res.text())
    .then(body => time += body);
  const d = new Date()
  time += `<br>Time: ${d.getHours()} : ${d.getMinutes()}`
  res.send(time)
})

app.listen(port, () => {
  console.log(`Server listening at http://localhost:${port}`)
})