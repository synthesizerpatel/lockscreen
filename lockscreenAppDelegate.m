//
//  lockscreenAppDelegate.m
//  lockscreen
//
//  Created by Nathan Ramella on 2/21/11.
//  Copyright 2011 remix.net. All rights reserved.
//

#import "lockscreenAppDelegate.h"

@implementation lockscreenAppDelegate;

@synthesize window;

OSStatus OnHotKeyEvent(EventHandlerCallRef nextHandler,EventRef theEvent,void *userData)
{
	EventHotKeyID hkCom;
	GetEventParameter(theEvent, kEventParamDirectObject, typeEventHotKeyID, NULL, sizeof(hkCom), NULL, &hkCom);
	int l = hkCom.id;
	switch (l) {
		case 1: // Control-Alt-Delete maps to screen locking
			NSLog (@"control-alt-delete recieved");
			[[ScreenSaverController controller] screenSaverStartNow];
			break;
	}
	return noErr;
}

- (void)activateStatusMenu {
    NSStatusBar *bar = [NSStatusBar systemStatusBar];

    // Add the lock icon for the status bar menu
    statusItem = [bar statusItemWithLength:NSVariableStatusItemLength];
    [statusItem retain];
    statusImage = [NSImage imageNamed:NSImageNameLockLockedTemplate];                  
    [statusItem setImage:statusImage];
    [statusItem setHighlightMode:YES];
    [statusItem setMenu:statusMenu];
}

// Action for connecting back to the project website
-(void)showAbout:id {
    [[NSWorkspace sharedWorkspace] openURL:[NSURL URLWithString:@"http://www.remix.net/blog/"]];
}

// Register global hotkeys as per Apple's documentation

-(void)registerHotKeys
{	
	EventHotKeyRef gMyHotKeyRef;
	EventHotKeyID gMyHotKeyID;
	EventTypeSpec eventType;
	eventType.eventClass=kEventClassKeyboard;
	eventType.eventKind=kEventHotKeyPressed;	

	NSLog(@"registering hotkeys");
	InstallApplicationEventHandler(&OnHotKeyEvent, 1, &eventType, (void *)self, NULL);
	gMyHotKeyID.signature='htk1';
	gMyHotKeyID.id=1;	
	RegisterEventHotKey(117, controlKey+optionKey, gMyHotKeyID, GetApplicationEventTarget(), 0, &gMyHotKeyRef);
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification 
{
	[self registerHotKeys];
    [self activateStatusMenu];
}
@end
