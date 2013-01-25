//
//  ALDSimpleInterstitialController.mViewController
//  AppLovin-iPhone-SDK-DemoApp
//
//  Created by David Anderson on 1/17/13.
//
//

#import "ALDCustomInterstitialController.h"
#import "ALInterstitialAd.h"

@interface ALDCustomInterstitialController ()

@end

@implementation ALDCustomInterstitialController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidAppear:(BOOL)animated {
    [[[ALSdk shared] adService] loadNextAd:[ALAdSize sizeInterstitial] placedAt:@"ALDCustomInterstitialController" andNotify:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)adService:(ALAdService *)adService didLoadAd:(ALAd *)ad
{
    [[ALInterstitialAd shared] showOver:self.view.window andRender:ad];
}


-(void)adService:(ALAdService *)adService didFailToLoadAdWithError:(int)code
{
    NSLog(@"didFailToLoadAdWithError");
}

-(void) ad:(ALAd *) ad wasDisplayedIn: (ALAdView *)view;
{
    NSLog(@"wasDisplayedIn");
}

-(void) ad:(ALAd *) ad wasHiddenIn: (ALAdView *)view
{
    NSLog(@"wasHiddenIn");
}


-(void)ad:(ALAd *)ad wasClickedIn:(UIView *)view
{
    NSLog(@"wasClickedIn");
}

@end
