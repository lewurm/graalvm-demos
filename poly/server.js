const express = require('express')
const app = express()

app.listen(3000, function () {
  console.log(`Example app listening on port 3000!`);
})

app.get('/', function (req, res) {
  var req_start_time = new Date().getTime();

  var text = '<h1>Hello Übersetzerbau VO SS22!</h1><br> ' + new Date() + ' <br> '

  var req_end_time = new Date().getTime()
  measured = `'/' request took ${req_end_time - req_start_time} milliseconds`

  // yellow output
  console.log('\x1b[33m' + measured + ' \x1b[0m')

  text += '<br> <h1>' + measured + '</h1>'
  res.send(text)
})


































  // // ====================================================
  // // Using Ruby interoperability to create a SVG
  // text += Polyglot.evalFile('ruby', 'svg.rb');





























  // // ====================================================
  // // Return a python method
  // Polyglot.evalFile('python', 'str_wrapper.py');
  // var py_wrap_with_color = Polyglot.import("wrap_with_color")
  // text += py_wrap_with_color('red', 'This is a string');
  // text += py_wrap_with_color('olive', 'passed via Interop');

