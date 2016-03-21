if exists("b:current_syntax")
  finish
endif

syntax include @SH syntax/sh.vim
syntax keyword LogrotateKeyword  compress compresscmd uncompresscmd compressext
syntax keyword LogrotateKeyword  delaycompress nocompress nodelaycompress compressoptions

syntax keyword LogrotateKeyword  copy copytruncate create nocopy nocreate
syntax keyword LogrotateKeyword  extension include

syntax keyword LogrotateKeyword  mail mailfirst maillast nomail

syntax keyword LogrotateKeyword  missingok nomissingok
syntax keyword LogrotateKeyword  olddir noolddir
syntax keyword LogrotateKeyword  ifempty notifempty
syntax keyword LogrotateKeyword  sharedscripts nosharedscripts

syntax keyword LogrotateKeyword  rotate size start su tabooext

syntax keyword LogrotateKeyword  maxsize minsize
syntax keyword LogrotateKeyword  maxage
syntax keyword LogrotateKeyword  dateext nodateext dateyesterday

syntax keyword LogrotateKeyword  shred noshred shredcycles

syntax keyword LogrotateInterval hourly daily monthly weekly yearly

syntax match LogrotateComment    "\v#.*$"
syntax match LogrotatePath       "\v(^/[^{]+)( \{|$)@="

syntax match LogrotateParam "\v((^\s*)(su|rotate|size|create|extension|include|mail|olddir|start|maxsize|minsize|shredcycles|compressoptions|maxage) +)@<=(.*)"

syntax region LogrotateScript matchgroup=LogrotateDelimiter start=/\v(prerotate|postrotate|preremove|firstaction|lastaction)/ end="endscript" contains=@SH

highlight default link LogrotateComment     Comment
highlight default link LogrotateKeyword     Keyword
highlight default link LogrotateInterval    Type
highlight default link LogrotatePath        String
highlight default link LogrotateParam       Boolean
highlight default link LogrotateDelimiter   Function

let b:current_syntax = "logrotate"
