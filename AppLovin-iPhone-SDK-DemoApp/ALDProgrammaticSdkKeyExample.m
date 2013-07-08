//
//  ALDProgrammaticSdkKeyExample.m
//  AppLovin-iPhone-SDK-DemoApp
//
//  Created by Matt Szaro on 7/3/13.
//
//

#import "ALDProgrammaticSdkKeyExample.h"

@interface ALDProgrammaticSdkKeyExample ()

@end

@implementation ALDProgrammaticSdkKeyExample
@synthesize sdk;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialize SDK manually with a programmatically specified SDK key
       sdk = [ALSdk sharedWithKey:@"SDK_KEY_HERE" settings:[[ALSdkSettings alloc] init]];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Show an interstitial manually with a programmatically specified SDK key
    
    CGRect frame = [[UIScreen mainScreen] applicationFrame];
    ALInterstitialAd * interstitial = [[ALInterstitialAd alloc] initWithFrame:frame sdk:sdk];
    [interstitial showOver:self.view.window];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
