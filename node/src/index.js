const fs = require('fs');
const express = require('express');

const app = express();

const storageFolder = '/storage';

let uploadCounter = 0;

app.post('/upload', function (req, res, next) {
  const fileId = uploadCounter++;
  const filename = `${storageFolder}/uploadfile-${fileId}.bin`;
  const outputStream = fs.createWriteStream(filename);
  console.log(`${filename} upload start`);
  req.on('end', () => {
	  console.log(`${filename} upload finished`);
	  //next();
	  res.send("Finished")
  });
  req.pipe(outputStream);
});

app.listen(3000);
