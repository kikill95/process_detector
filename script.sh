#!/bin/sh
(
  for i in /Applications/*.app
   do
       Printf "$i \t" | cut -c15-1000
    /usr/libexec/plistbuddy -c Print:CFBundleIdentifier: "$i"/Contents/info.plist
  done
)>Applist.txt
