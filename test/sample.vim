let s:suite = themis#suite('template')
let s:assert = themis#helper('assert')

call WaitDenopsLoading()

function s:suite.hello()
  call s:assert.equals('hello', 'hello')
endfunction
