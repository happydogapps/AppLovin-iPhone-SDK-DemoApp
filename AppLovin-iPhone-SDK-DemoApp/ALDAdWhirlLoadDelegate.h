//
//  ALAdWhirlLoadDelegate.h
//  AppLovin AdMob Mediation
//
//  Created by David Anderson on 12/3/12.
//  Copyright (c) 2012 AppLovin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ALAdLoadDelegate.h"

#import "AlWhirlView.h"

@interface ALDAdWhirlLoadDelegate : NSObject <ALAdLoadDelegate>

@property (nonatomic, retain) AdWhirlView *adWhirlView;

+(ALAdWhirlLoadDelegate *) initWithAdWhirlView: (AdWhirlView *) adWhirlView;

@end
