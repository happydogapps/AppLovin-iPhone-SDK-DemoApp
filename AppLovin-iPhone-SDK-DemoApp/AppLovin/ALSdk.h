//
//  AppLovinSdk.h
//
//  Created by Basil Shikin on 2/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "ALSdkSettings.h"
#import "ALAdService.h"

/**
 * Current SDK version
 */
extern NSString * const AlSdkVersion;

/**
 * This is a custom URI scheme that is used to Applovin specific actions. An 
 * example of such action would be:
 * <pre>
 *        applovin://com.applovin.sdk/adservice/track_click
 * </pre>
 */
extern NSString * const AlSdkUriScheme;

/**
 * This is a host name that is used to Applovin SDK custom actions
 */
extern NSString * const AlSdkUriHost;

/**
 * This is a base class for AppLovin Ad SDK.
 *
 * @version 1.0
 */
@interface ALSdk : NSObject


@property (readonly, strong) NSString* sdkKey;
@property (readonly, strong) ALSdkSettings * settings;

-(ALAdService *) adService;

/**
 * Get a shared instance of AppLovin SDK. Please make sure that application's 
 * <code>Info.plist</code> includes a property 'AppLovinSdkKey' that is set to provided SDK key.
 * 
 * @return An instance of AppLovinSDK
 */
+ (ALSdk *) shared;

/**
 * Get an instance of AppLovin SDK.
 * 
 * @param userSettings   User-provided settings. May be null.
 * 
 * @return An instance of AppLovinSDK
 */
+ (ALSdk *) sharedWithSettings : (ALSdkSettings *)settings;

+ (NSString *) version;

@end
