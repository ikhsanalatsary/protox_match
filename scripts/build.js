'use strict';

const { exec } = require('child_process');
const { resolve } = require('path');
const { existsSync, mkdirSync } = require('fs');

const rootDir = resolve(__dirname,'..');
const sourceDir = resolve(rootDir, 'pbs');
const targetDir = resolve(rootDir, 'lib/generated');
if (!existsSync(targetDir)){
  mkdirSync(targetDir);
}
const protoc = exec(`protoc --dart_out=grpc:${targetDir} -I${sourceDir} ${sourceDir}/*.proto`, function (error, stdout, stderr) {
  if (error) {
    console.log(error.stack);
    console.log('Error code: '+error.code);
    console.log('Signal received: '+error.signal);
  }
  console.log('Child Process STDOUT: '+stdout);
  console.log('Child Process STDERR: '+stderr);
});

protoc.on('exit', function (code) {
  console.log('Child process exited with exit code '+code);
});