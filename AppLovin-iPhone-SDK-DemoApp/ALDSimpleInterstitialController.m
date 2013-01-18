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
    [ALInterstitialAd showOver:self.view.window];

}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
