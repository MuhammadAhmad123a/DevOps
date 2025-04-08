# Modules in Python Scripting : SYS, OS, Math, Subprocess, Random, Datetime, JSON

# py -m pip install pywin32.  Run these commands with Admin User
# C:\Program Files\Stackless36\Scripts>py pywin32_postinstall.py -install 
# The path C:\Program Files\Stackless36\ should be replaced with the path at which your Python version is installed.
# py -c "import win32com"  

import webbrowser
import time
import win32com.client

shell = win32com.client.Dispatch("WScript.Shell")

url="www.gmail.com"
email_to="muhammad.faran151@gmail.com"
subject="Hello World!"
msg="Alu."

webbrowser.open(url)
time.sleep(9)

shell.SendKeys("c", 0)
time.sleep(5)
shell.SendKeys(email_to, 0)
time.sleep(3)
shell.SendKeys("{TAB}", 0)
time.sleep(1)
shell.SendKeys("{TAB}", 0)
time.sleep(1)
shell.SendKeys(subject, 0)
time.sleep(1)
shell.SendKeys("{TAB}", 0)
time.sleep(1)
shell.SendKeys(msg, 0)
time.sleep(1)
shell.SendKeys("{TAB}", 0)
time.sleep(1)
shell.SendKeys("{ENTER}", 0)

# Note Enable shortcut key in Gmail Settings first
