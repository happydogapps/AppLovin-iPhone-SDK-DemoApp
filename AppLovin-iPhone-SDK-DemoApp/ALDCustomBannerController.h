//
//  ALDCustomBannerController.h
//  AppLovin-iPhone-SDK-DemoApp
//
//  Created by Basil on 4/30/12.
//  Copyright (c) 2012 AppLovin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ALAdView.h"

@interface ALDCustomBannerController : UIViewController<ALAdDisplayDelegate, ALAdLoadDelegate> {
    IBOutlet UIView * mainView;
    ALAdView * adView;
}

@end
