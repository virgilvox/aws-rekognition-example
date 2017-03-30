AWS = require 'aws-sdk'
image = require '../image.json'

AWS.config.loadFromPath('./config.json')
rekognition = new AWS.Rekognition()

params = {
  Image:
    Bytes: image.b64
  # MaxLabels: 0
  # MinConfidence: 0.0
}

rekognition.detectLabels params, (err, data) =>
  return console.log err if err?
  console.log data
