//
//  ALDAppDelegate.m
//  AppLovin-iPhone-SDK-DemoApp
//
//  Created by Basil on 4/26/12.
//  Copyright (c) 2012 AppLovin. All rights reserved.
//

#import "ALDAppDelegate.h"

#import "ALDSimpleBannerController.h"
#import "ALDSimpleInterstitialController.h"
#import "ALDCustomBannerController.h"
#import "ALDCustomInterstitialController.h"

@implementation ALDAppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //
    // Call to [ALSdk initializeSdk] is essential on application launch
    //
    [ALSdk initializeSdk];
    
    
    // Display simple banner demo
    self.viewController = [ [ALDSimpleBannerController alloc] initWithNibName:@"ALDSimpleBannerController" bundle:nil];
  
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationDidFinishLaunching:(UIApplication *)application
{
}

- (void)applicationWillResignActive:(UIApplication *)application
{
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
}

@end
