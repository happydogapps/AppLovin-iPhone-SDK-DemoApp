//
//  AppLovinCustomEventBanner.h
//  AppLovin AdMob Mediation
//
//  Created by David Anderson on 11/29/12.
//  Copyright (c) 2012 AppLovin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GADCustomEventBanner.h"
#import "GADCustomEventBannerDelegate.h"
#import "GADBannerView.h"
#import "GADBannerViewDelegate.h"
#import "ALAdService.h"
#import "ALAdView.h"

@interface ALDAdMobMediationController : NSObject <GADCustomEventBanner, ALAdLoadDelegate, ALAdDisplayDelegate>
{
    // Current ad view
    ALAdView *applovinAdView;
}

/**
 * This method would be called when a new ad was loaded by AppLovin.
 */
-(void)adService:(ALAdService *)adService didLoadAd:(ALAd *)ad;

/**
 * This method would be called when an was requested but ad failed to load by AppLovin.
 */
-(void)adService:(ALAdService *)adService didFailToLoadAdWithError:(int)code;


/**
 * This method is invoked when the ad is clicked from in the view.
 *
 * @param ad     Ad that was just clicked. Guranteed not to be null.
 * @param view   Ad view in which the ad was hidden. Guranteed not to be null.
 */
-(void) ad:(ALAd *) ad wasClickedIn: (UIView *)view;

@end
