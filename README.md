call-with-skype
===============

call-with-skype is a quick and dirty Skype bridge written in Objective-C. The included Xcode project will build a CLI utility for initiating calls from the command line and an OS X Automator action for initiating calls from a Workflow or System Service in [Automator](http://www.macosxautomation.com/automator/).


CLI
---

Usage: call-with-skype -n "(555) 555-5555"

The phone number can be in any format but must be a valid 10 digit US phone number.


Automator Action
----------------

The automator action will accept a US phone number (in any format) as text and return the phone number unchanged.