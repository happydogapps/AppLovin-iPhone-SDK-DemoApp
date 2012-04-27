//
//  ALAdDisplayDelegate.h
//  sdk
//
//  Created by Basil on 3/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ALAd.h"
/**
 * This protocol defines a listener for ad display events. 
 *
 * @author Basil Shikin
 * @since 2.0
 */
@class ALAdView;
@protocol ALAdDisplayDelegate <NSObject>

/**
 * This method is invoked when the ad is displayed in the view.
 * <p>
 * This method is invoked on the main UI thread.
 * 
 * @param ad     Ad that was just displayed. Guranteed not to be null.
 * @param view   Ad view in which the ad was displayed. Guranteed not to be null. 
 */
-(void) ad:(ALAd *) ad wasDisplayedIn: (ALAdView *)view;

/**
 * This method is invoked when the ad is hidden from in the view. This occurs
 * when the ad is rotated or when it is explicitly closed.
 * <p>
 * This method is invoked on the main UI thread.
 * 
 * @param ad     Ad that was just hidden. Guranteed not to be null.
 * @param view   Ad view in which the ad was hidden. Guranteed not to be null.
 */
-(void) ad:(ALAd *) ad wasHiddenIn: (ALAdView *)view;

@end
