let s:suite = themis#suite('template')
let s:assert = themis#helper('assert')

" wait for denops starting
while denops#server#status() !=# 'running'
  sleep 1
endwhile

function s:suite.hello()
  let actual = 'Hello, world!'
  let expected = 'Hello, world!'
  call s:assert.equals(actual, expected)
endfunction
