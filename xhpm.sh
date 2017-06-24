#!/bin/bash
while true ; do
   killall tmux
for entr in tabchi-*.sh ; do
    entry="${entr/.sh/}"
    tmux new-session -d -s $entry "./$entr"
  done
  echo 'On! (BY:SinaXhpm)'
sleep 1080
done