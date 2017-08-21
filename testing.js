const exec = require('child_process').exec

let cmd = 'ps aux'
exec(cmd, (error, stdout, stderr) => {
  let list = stdout.match(/[^\r\n]+/g).filter(app => /(\/(Applications|Users|System|Library).+?MacOS)\/(.+?)(\s-|$)/.exec(app))
  console.log(list)
})


// function getListOfprocessesOSX () {
//   let cmd = 'ps aux'
//   exec(cmd, (error, stdout, stderr) => {
//     list = []
//     indexList = []
//     stdout.match(/[^\r\n]+/g).forEach(app => {
//       let result = /(\/(Applications|Users|System|Library).+?MacOS)\/(.+?)(\s-|$)/.exec(app)
//       if (result) {
//         // result
//       }
//     })
//   })
// }
//
// function getListOfprocessesWindows () {
//   let cmd = 'wmic process get Name,ExecutablePath'
//   exec(cmd, function (error, stdout, stderr) {
//     list = []
//     processes = []
//     indexList = []
//     stdout.match(/[^\r\n]+/g).forEach(app => {
//       let result = /^(.+?\.exe)/i.exec(app)
//       if (result) {
//         app = result[1].trim()
//         // console.log('app:' + app)
//         if (processes.indexOf(app) === -1) {
//           processes.push(app)
//         }
//       }
//       // list.push({command: app.replace(/\"/g, "")});
//     })
//   })
// }

// function killProcessOsx () {
//   if (blockedProgramsArray.length > 0) {
//     let cmd = 'killall '
//     blockedProgramsArray.forEach(blockedProcess => {
//       cmd += ' \'' + blockedProcess + '\''
//     })
//     exec(cmd, (error, stdout, stderr) => {
//
//     })
//   }
// }
//
// function killProcessWindows () {
//   if (blockedProgramsArray.length > 0) {
//     let cmd = 'Taskkill '
//     blockedProgramsArray.forEach(function (blockedProcess) {
//       cmd += ' /IM ' + blockedProcess
//     })
//     cmd += ' /F'
//     exec(cmd, (error, stdout, stderr) => {
//
//     })
//   }
// }
