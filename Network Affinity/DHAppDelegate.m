//
//  DHAppDelegate.m
//  Network Affinity
//
//  Created by Dustin Howett on 11/4/11.
//

#import "DHAppDelegate.h"
#import "DHNARootController.h"

@implementation DHAppDelegate

@synthesize window = _window, rootController = _rootController;

- (void)dealloc
{
    [_window release];
    [_rootController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    _rootController = [[DHNARootController alloc] init];
    self.window.rootViewController = _rootController;
    [self.window makeKeyAndVisible];

    return YES;
}

@end
