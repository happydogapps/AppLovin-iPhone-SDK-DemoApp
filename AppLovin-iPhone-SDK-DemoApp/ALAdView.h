//
//  ALAdView.h
//  sdk
//
//  Created by Basil on 3/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ALAdService.h"

@interface ALAdView : UIView<ALAdLoadDelegate>

@property (assign, atomic) id<ALAdLoadDelegate> adLoadDelegate;
@property (assign, atomic) id<ALAdDisplayDelegate> adDisplayDelegate;

@property (assign, atomic) ALAdSize * adSize;

/**
 * Start loading next advertisement. This method will return immediately. An
 * advertisement will be rendered by this view when available.
 */
-(void)loadNextAd;

/**
 * Render specified ad.
 * 
 * @param ad Ad to render. Must not be null.
 */
-(void)render:(ALAd *)ad;


@end
