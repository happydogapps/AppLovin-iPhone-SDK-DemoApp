//
//  ALDCustomInterstitialControllerViewController.h
//  AppLovin-iPhone-SDK-DemoApp
//
//  Created by David Anderson on 1/22/13.
//
//

#import <UIKit/UIKit.h>
#import "ALInterstitialAd.h"
#import "ALAdDisplayDelegate.h"
#import "ALAdLoadDelegate.h"

@interface ALDCustomInterstitialController : UIViewController <ALAdDisplayDelegate, ALAdLoadDelegate> {
ALInterstitialAd * interstitial;
}

@end
