#import "ALDAdMobMediationController.h"

@implementation ALDAdMobMediationController;

// Will be set by the AdMob SDK.
@synthesize delegate = delegate_;

#pragma mark -
#pragma mark GADCustomEventBanner

- (void)requestBannerAd:(GADAdSize)adSize
              parameter:(NSString *)serverParameter
                  label:(NSString *)serverLabel
                request:(GADCustomEventRequest *)request
{
    // When an advertisement is requested the first time, create a new AppLovin Ad View.
    if (!applovinAdView)
    {
        applovinAdView = [ [ALAdView alloc] initBannerAd];
    }
    
    [applovinAd setAdLoadDelegate:self];
    [applovinAd setAdDisplayDelegate:self];
    
    [applovinAd loadNextAd];
}

//
// This method would be called when a new ad was loaded by AppLovin
//
-(void)adService:(ALAdService *)adService didLoadAd:(ALAd *)ad
{
    // Notify the delegate about newly recieved ad
    [[NSOperationQueue mainQueue] addOperationWithBlock:^{
        [self.delegate customEventBanner:self didReceiveAd:applovinAdView];
    }];
}

// This method would be called when an was requested but ad failed to load
-(void)adService:(ALAdService *)adService didFailToLoadAdWithError:(int)code
{
    // Notify the delegate about a failure to recieve an ad
    NSError *error = [[NSError alloc] init];
    error.code = code;
    [self.delegate customEventBanner:self didFailAd:error];
}

-(void) ad:(ALAd *) ad wasClickedIn: (UIView *)view
{
    [self.delegate customEventBannerWillLeaveApplication:self];
}

-(void) ad:(ALAd *) ad wasHiddenIn:(UIView *)view {}

-(void) ad:(ALAd *) ad wasDisplayedIn:(UIView *)view {}

@end