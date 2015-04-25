
proc inspect*(name: string, s: seq[int]): seq[int] =
  echo name, " = ", s
  echo name, ".high ", s.high
  echo name, ".low  ", s.low
  echo name, ".len  ", s.len
  if s.len > 0:
    echo name, ".max  ", s.max
  else:
    echo name, ".max  ", "Empty sequence has no max (should be an exception)"
  s


proc inspect*[T](s: seq[T]): seq[T] =
  discard inspect("seq", s)
  s


let x = @[1,2,3,4]
let y: seq[int] = @[]

discard inspect x
discard inspect y