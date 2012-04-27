//
//  ALAdService.h
//  sdk
//
//  Created by Basil on 2/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ALAd.h"
#import "ALAdSize.h"
#import "ALAdLoadDelegate.h"
#import "ALAdDisplayDelegate.h"

/**
 * This is an endpoint name for custom AppLovin URL for tracking
 * an ad click:
 * <pre>
 *        applovin://com.applovin.sdk/adservice/track_click
 * </pre>
 */
extern NSString * const AlSdkUriTrackClick;

/**
 * This is an endpoint name for custom AppLovin URL for forcing
 * container to load the next ad:
 * <pre>
 *        applovin://com.applovin.sdk/adservice/next_ad
 * </pre>
 */
extern NSString * const AlSdkUriNextAd;

/**
 * This is an endpoint name for custom AppLovin URL for forcing
 * ad container to close itself:
 * <pre>
 *        applovin://com.applovin.sdk/adservice/close_ad
 * </pre>
 */
extern NSString * const AlSdkCloseAd;

/**
 * This is an endpoint name for custom landing page that should
 * be displayed.
 * <pre>
 *        applovin://com.applovin.sdk/adservice/landing_page/<PAGE_ID>
 * </pre>
 */
extern NSString * const AlSdkLandingPage;

/**
 * This class represents AppLovin Ad serving service. It is able to provide ads, track clicks and conversions.
 * <p>
 * An instance of this service could be obtained from {@link AppLovinSdk} object via <code>getAdService()</code>
 * 
 * @author Basil Shikin
 * @version 1.0
 */
@interface ALAdService : NSObject

/**
 * Fetch next ad. A listener registered  using <code>setAdListener()</code> will
 * be notified once new ad is available to display.
 * 
 * @param adSize    Size of an ad to load. Must not be null.
 * @param callback  A callback to notify of the fact that the ad is loaded. Must not be null. A reference
 *                  to the callback will be persisted until the ad is loaded.
 */
-(void) loadNextAd: (ALAdSize *) adSize andNotify: (id<ALAdLoadDelegate>)delegate;

/**
 * Track a click on a given ad.
 * 
 * @param ad        Advertisement to track. Must not be null. This add should be the one returned from
 *                  <code>ALAdLoadDelegate</code>.
 */
-(void) trackClickOn: (ALAd *) ad;

/**
 * Track a conversion of this application. This method returns immediately, a tracking operation is
 * executed in the background. A tracking request would be sent only if conversion has not been tracked
 * before.
 */
-(void) trackConversion;

/**
 * Ask a user about whether he opts into social ad program. This method
 * schedules a task that would render a dialog asking user to agree to
 * AppLovin terms of use.
 */
-(void) promptSocialAdsOptin;

/**
 * Get a shared instance of an ad service.
 */

+(ALAdService *) shared;
@end
