//
//  ALInterstitialAd.h
//  sdk
//
//  Created by Basil on 3/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "ALSdk.h"
#import "ALAdService.h"

@interface ALInterstitialAd : UIView

@property (strong, atomic) id<ALAdLoadDelegate> adLoadDelegate;
@property (strong, atomic) id<ALAdDisplayDelegate> adDisplayDelegate;


/**
 * Show a new interstitial ad. This method would display a dialog on top of current
 * view with an advertisement in it.
 *
 * @param window  A window to show the interstitial over
 */
+(ALInterstitialAd *) showOver:(UIWindow *)window;


/**
 * Dismiss current dialog
 */
- (void)dismiss;


/**
 * Show current interstitial over a given window.
 *
 * @param window An instance of window to show the interstitial over.
 * @param ad The ALAd that you want to render into this interstitial.
 */

-(void) showOver:(UIWindow *)window andRender: (ALAd *) ad;

/**
 * Get shared interstitial view
 */
 
+(ALInterstitialAd *) shared;

@end
