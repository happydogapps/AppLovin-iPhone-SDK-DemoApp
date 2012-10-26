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

@property (assign, atomic) id<ALAdLoadDelegate> adLoadDelegate;
@property (assign, atomic) id<ALAdDisplayDelegate> adDisplayDelegate;

/**
 * Show current interstitial over a given window.
 *
 * @param window An instance of window to show the interstitial over.
 * @param ad The ALAd that you want to render into this interstitial.
*/

-(void) showOver:(UIWindow *)window andRender: (ALAd *) ad;

/**
 * Dismiss current dialog
 */
- (void)dismiss; 


/**
 * Create an new interstitial ad using a given SDK
 *
 * @param frame  A frame to use for the interstitial
 * @param sdk    SDK to use to load ads
 */
- (id)initWithFrame:(CGRect)frame andSdk: (ALSdk *) sdk;
    
/**
 * Show a new interstitial ad. This method would display a dialog on top of current view
 * view with an advertisement in it.
 * 
 * @param window  A window to show the interstitial over
 */
+(ALInterstitialAd *) showOver:(UIWindow *)window;

/**
 * Returns the shared instance of ALInterstitialAd
 */
+(ALInterstitialAd *) shared;

@end
