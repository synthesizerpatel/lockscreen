#!/bin/bash

open /Applications/lockscreen.app

defaults write /Library/Preferences/loginwindow AutoLaunchedApplicationDictionary -array-add '{Path="/Applications/lockscreen.app";}'
