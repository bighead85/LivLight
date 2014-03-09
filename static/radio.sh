#!/bin/bash
case "$1" in 
	"jack")
	say () { local IFS=+;/usr/bin/mplayer -ao alsa -really-quiet -noconsolecontrols "http://translate.google.com/translate_tts?tl=en&q=$*"; }
say 'Starting 106 Jack FM South Coast'
	mplayer http://stream3.radiomonitor.com:80/JackSouthCoast-128
	;;
	"r1")
	say () { local IFS=+;/usr/bin/mplayer -ao alsa -really-quiet -noconsolecontrols "http://translate.google.com/translate_tts?tl=en&q=$*"; }
say 'Starting BBC Radio 1' 
	mplayer http://www.bbc.co.uk/radio/listen/live/r1_aaclca.pls
	;;
	"heart")
	say () { local IFS=+;/usr/bin/mplayer -ao alsa -really-quiet -noconsolecontrols "http://translate.google.com/translate_tts?tl=en&q=$*"; }
say 'Starting Heart Somerset'
	mplayer http://ice-sov.musicradio.com:80/HeartSomersetMP3
	;;
	"absolute")
	say () { local IFS=+;/usr/bin/mplayer -ao alsa -really-quiet -noconsolecontrols "http://translate.google.com/translate_tts?tl=en&q=$*"; }
say 'Starting Absolute 90s'
	mplayer http://stream.timlradio.co.uk/ABSOLUTE90SIRMP3?ats=1
	;;
	*) echo "invalid Choice"
	echo "--Choose r1 for BBC Radio 1"
	echo "--Choose jack for 106 Jack FM South Coast"
	echo "--Choose heart for Heart Somerset"
	echo "--Choose absolute for Absolute 90s"
        ~/google/./text2speech.sh 'invalid Choice, Choose r1 for BBC Radio 1, Choose jack for 1 0 6 Jack FM South Coast, 
Choose heart for Heart Somerset, or absolute for Absolute 90s'
	exit 0
	;;
       esac
