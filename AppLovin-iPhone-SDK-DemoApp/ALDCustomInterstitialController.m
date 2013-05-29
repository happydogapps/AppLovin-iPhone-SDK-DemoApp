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


- (void)viewDidAppear:(BOOL)animated
{
    //
    // Trigger a log of the next interstitial. When the ad is loaded
    // adService:didLoadAd: will be invoked. In case of failure
    // adService:didFailToLoadAdWithError: will be called
    //
    [[[ALSdk shared] adService] loadNextAd:[ALAdSize sizeInterstitial]      placedAt:@"ALDCustomInterstitialController" andNotify:self];
}



-(void)adService:(ALAdService *)adService didLoadAd:(ALAd *)ad
{
    //
    // Attach a listener to interstitial view state. When the intesritial
    // This is an optional step that should be used to listen for
    // displayed, closed and clicked events
    //
    [ALInterstitialAd shared].adDisplayDelegate = self;


    //
    // Show loaded an interstitial over the current window
    //
    [[ALInterstitialAd shared] showOver:self.view.window andRender:ad];
}

-(void)adService:(ALAdService *)adService didFailToLoadAdWithError:(int)code
{
    //
    // An ad failed to load. 'code' variable would contain an HTTP code of the
    // failure. Common error codes are:
    //
    //       202 -- no ad is available
    //       5xx -- server errors
    //  negative -- internal errors
    //
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

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


@end
