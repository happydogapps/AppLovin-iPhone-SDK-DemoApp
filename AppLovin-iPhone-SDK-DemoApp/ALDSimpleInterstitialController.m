//
//  ALDSimpleInterstitialController.mViewController
//  AppLovin-iPhone-SDK-DemoApp
//
//  Created by David Anderson on 1/17/13.
//
//

#import "ALDSimpleInterstitialController.h"
#import "ALInterstitialAd.h"

@interface ALDSimpleInterstitialController ()

@end

@implementation ALDSimpleInterstitialController

- (void)viewDidAppear:(BOOL)animated
{
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

- (IBAction)showInterstitial:(id)sender {
    
    //
    // This method trigger AppLovin interstitial loading.
    // Note that the application flow will not be blocked: an interstital
    // will be displayed when loaded from the server.
    //
    [ALInterstitialAd showOver:self.view.window];

}
@end
