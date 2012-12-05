//
//  ALAdWhirlLoadDelegate.m
//  AppLovin AdMob Mediation
//
//  Created by David Anderson on 12/3/12.
//  Copyright (c) 2012 AppLovin. All rights reserved.
//

#import "ALAdWhirlLoadDelegate.h"

@implementation ALAdWhirlLoadDelegate

@synthesize adWhirlView;


- (void) adService:(ALAdService *)adService didLoadAd:(ALAd *)ad
{
    [[adWhirlView delegate] adWhirlDidReceiveAd:adWhirlView];
}

- (void) adService:(ALAdService *)adService didFailToLoadAdWithError:(int)code
{
    [[adWhirlView delegate] adWhirlDidFailToReceiveAd:adWhirlView usingBackup:NO];
}

+ (ALAdWhirlLoadDelegate *) initWithAdWhirlView:(AdWhirlView *)adWhirlView
{
    ALAdWhirlLoadDelegate *delegate = [[ALAdWhirlLoadDelegate alloc] init];
    delegate.adWhirlView = adWhirlView;
    
    return delegate;
}

@end