lockscreen 1.0
---------------

# UPDATE 2016-01-28 - This project compiles and runs as of 10.11 SDK and 64bit El Capitan.

# UPDATE 2013-06-22 - Was able to successfully compile the project using 10.8 SDK on a 64 bit Mountain Lion box

We still got mojo! Wow this font is big!

# Abstract #
lockscreen.app provides a global-hotkey listener for the Control-Alt-Delete key-chord historically known as
'The three finger salute'. Upon detecting the key-chord, will start the screen saver regardless of what application
you're in.

The reason for this app is simple - there's no 'quick' way to lock your screen if you're in a hurry - the available
solutions are lacking. With OSX's built-in **Hot Corners**, about 50% of the time the act of getting up from my desk
will jostle the mouse enough to bounce it back **out** of the hot corner resulting in the screen not locking.

# Historical #

Control-Alt-Delete was used to send a soft-reboot command to the operating system, with Windows NT they instead used this signal to bring up the **Shutdown** menu, which if you hit **Enter** would automatically lock your screen, I got used to 
this mechanism as it was instant and never prone to any problems.

# Caveats #

+ "OSX doesn't have an alt button!"

    Yes it does, they call it **Option**, so if you want to be pedantic you could say this is really about utilizing
Control-Option-Delete. If you hook up a PC keyboard, it's really the same key code as ALT.

# Credits #

The bulk of this code is from Apple's own documentation with a little cut/paste from random sources I ran across:
I can really take credit for smooshing it all together and packaging up an app.

    For the StatusMenu code:

        http://cocoatutorial.grapewave.com/2010/01/creating-a-status-bar-application/

    For the hotkey example code:

        http://dbachrach.com/blog/2005/11/program-global-hotkeys-in-cocoa-easily/

Nathan Ramella

webpage: [remix.net](http://www.remix.net/)

email: [nar@hush.com](mail://nar@remix.net)
