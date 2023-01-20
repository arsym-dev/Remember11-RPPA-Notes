## Automate the following process:
## 1) Compress $1 and save as $2
## 2) Move to unpacked folder
## 3) Repack the archive
## 4) Move to game file folder
## 5) Run game
## 6) Open Shortcuts menu

import win32api, win32con
import win32com.client
import win32ui
import time
from win32gui import GetWindowText, GetForegroundWindow
import subprocess
import sys
import shutil
import glob, os

from ctypes import *
user32 = windll.user32


ae_pid = 368 # PID of AnimED window
list_name = "_list.txt"
arc_name = "mac-en.afs"
unpacked_dir = 'D:/Desktop/Games/Remember11/Extracted/MAC/_Repack/mac-en.afs~/'
game_dir = 'D:/Games/Remember11/'

shell = win32com.client.Dispatch("WScript.Shell")

## Definitions for a mouse click
PUL = POINTER(c_ulong)
class KeyBdInput(Structure):
    _fields_ = [("wVk", c_ushort),
             ("wScan", c_ushort),
             ("dwFlags", c_ulong),
             ("time", c_ulong),
             ("dwExtraInfo", PUL)]

class HardwareInput(Structure):
    _fields_ = [("uMsg", c_ulong),
             ("wParamL", c_short),
             ("wParamH", c_ushort)]

class MouseInput(Structure):
    _fields_ = [("dx", c_long),
             ("dy", c_long),
             ("mouseData", c_ulong),
             ("dwFlags", c_ulong),
             ("time",c_ulong),
             ("dwExtraInfo", PUL)]

class Input_I(Union):
    _fields_ = [("ki", KeyBdInput),
              ("mi", MouseInput),
              ("hi", HardwareInput)]

class Input(Structure):
    _fields_ = [("type", c_ulong),
             ("ii", Input_I)]

class POINT(Structure):
    _fields_ = [("x", c_ulong),
             ("y", c_ulong)]

def click():
    """
    FInputs = Input * 2
    extra = c_ulong(0)

    click = Input_I()
    click.mi = MouseInput(0, 0, 0, 2, 0, pointer(extra))
    release = Input_I()
    release.mi = MouseInput(0, 0, 0, 4, 0, pointer(extra))

    x = FInputs( (0, click), (0, release) )
    user32.SendInput(2, pointer(x), sizeof(x[0]))
    """

    win32api.mouse_event(win32con.MOUSEEVENTF_LEFTDOWN,0,0)
    time.sleep(0.1)
    win32api.mouse_event(win32con.MOUSEEVENTF_LEFTUP,0,0)
# END SENDINPUT TYPE DECLARATIONS


def MoveCursor(x, y):
    """
    Move cursor using the windows api. Instantly teleports mouse to location
    """
    win32api.SetCursorPos([x, y])


#############
## 0) Get files in folder
#############
os.chdir(".")
for file in glob.glob("*.CMD"):
    bip_file = os.path.splitext(file)[0] + ".BIP"

    #############
    ## 1) Compress file
    #############
    cmd = ['perl', 'compress-bip.pl', file, bip_file]
    process = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE)
    process.wait()

    print("Compressed")


    #############
    ## 2) Move to archive directory
    #############
    shutil.copy(bip_file, unpacked_dir)

    print("Moved to archive directory")


#############
## 3) Repack the archive
#############

## Set focus to window
shell.AppActivate(ae_pid)

## Get focused window title
win_title = GetWindowText(GetForegroundWindow())

## Move mouse to drop down
x, y = win32ui.FindWindow(None, win_title).GetWindowRect()[0:2]
user32.SetCursorPos(x + 550, y + 150)

## Click the drop down menu
click()

## Move to (create from list)
x, y = win32ui.FindWindow(None, win_title).GetWindowRect()[0:2]
user32.SetCursorPos(x + 550, y + 230)

## Click the option
click()

## Wait for "open" window to appear and press enter
time.sleep(1.0)
#shell.SendKeys(list_name)
shell.SendKeys('{ENTER}')

## Wait for "save" window to appear and type in archive name
time.sleep(1.0)
shell.SendKeys(arc_name)
shell.SendKeys('{ENTER}')

#sys.exit()

## Press "Yes" to overwrite
time.sleep(1.0)
shell.SendKeys('y')

## Wait for packing to finish
time.sleep(3.0)

print("Repacked")

#############
## 4) Move to game file directory
#############
shutil.copy(unpacked_dir + arc_name, game_dir+"FILE")

print("Moved to game directory")

#############
## 5) Run game
#############
cmd = game_dir+"R11-English.exe"
process = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE)

print("Started game")

"""

#############
## 6) Go to shortcut menu
#############

## Get window
time.sleep(8)
x, y = win32ui.FindWindow(None, "Remember 11").GetWindowRect()[0:2]

## Start
MoveCursor(x+380, y+450)
click()
time.sleep(1.0)


## Continue
MoveCursor(x+377, y+464)
click()
time.sleep(1.0)


## Shortcut
MoveCursor(x+434, y+500)
click()


print("Navigated to shortcut menu")
"""
