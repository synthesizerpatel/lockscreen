/*
 *  file: lockscreenAppDelegate.h
 *   app: lockscreen
 *  Created by Nathan Ramella on 2/21/11.
 *  Copyright 2011 remix.net. All rights reserved.
 */

#import <Carbon/Carbon.h>
#import <Cocoa/Cocoa.h>

@interface lockscreenAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow		*window;
	NSStatusItem	*m_statusItem;
    NSMenuItem      *m_quit;
    NSImage         *statusImage;
    IBOutlet NSMenu *statusMenu;
    NSStatusItem    *statusItem;
}

@property (assign) IBOutlet NSWindow *window;
- (IBAction) showAbout:(id) sender;
@end

@interface ScreenSaverController:NSObject + controller;
@end

@protocol ScreenSaverControl
- (double)screenSaverTimeRemaining;
- (void)restartForUser:fp16;
- (void)screenSaverStopNow;
- (void)screenSaverStartNow;
- (void)setScreenSaverCanRun:(char)fp19;
- (char)screenSaverCanRun;
- (char)screenSaverIsRunning;
@end
