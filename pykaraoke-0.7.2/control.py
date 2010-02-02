#!/usr/bin/python

from pycdg import *
from pykdb import *
import time
from pykmanager import manager
from pykdb import *
import sys
from threading import Thread

songDb = globalSongDB
songDb.LoadSettings(None)


def ErrorPopupCallback(ErrorString):
    print ErrorString

def SongFinishedCallback():
    manager.CloseDisplay()
    print "finished"
    sys.stdout.flush()

global player
player = None

global doexit
doexit = False


def stop():
    global player
    if player:
        player.Close()
        player = None



def play(file):
    global player
    if player:
        stop()
    song = SongStruct(file, SettingsStruct())
    player = song.MakePlayer(songDb, ErrorPopupCallback, SongFinishedCallback)
    if player:
        player.Play()

def restart():
    global player
    if player:
        player.Rewind()
        player.Play()

class PlayerThread(Thread):
    def __init__ (self):
        Thread.__init__(self)

    def run(self):
        while 1:
            line = sys.stdin.readline()[:-1]
            if line == "#stop#":
                stop()
            if line == "#restart#":
                restart()
            elif line == "#exit#":
                global doexit
                doexit = True
                break
            else:
                play(line)



thread = PlayerThread()
thread.start()

try:
    while doexit == False:
        time.sleep(0.05)
        manager.Poll()
except:
    sys.exit(0)

