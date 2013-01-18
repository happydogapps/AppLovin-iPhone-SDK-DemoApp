//
//  ALDCustomBannerController.m
//  AppLovin-iPhone-SDK-DemoApp
//
//  Created by Basil on 4/30/12.
//  Copyright (c) 2012 AppLovin. All rights reserved.
//

#import "ALDCustomBannerController.h"

#import "ALSdk.h"
@interface ALDCustomBannerController ()

@end

@implementation ALDCustomBannerController

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
    
    // Create new AdView
    adView = [[ALAdView alloc] initBannerAd];

    //
    // (Optional) Register self as listener for ad dispayed events.
    //
    //    -(void) ad:(ALAd *) ad wasDisplayedIn: (ALAdView *)view will be invoked when
    //
    // an ad was recieved, rendered and loaded.
    //
    adView.adDisplayDelegate = self;

    //
    // (Optional) Position the ad at the bottom of screen. By default
    // it would be postitioned at (0,0)
    //
    adView.frame = CGRectMake( 0,
                               mainView.frame.size.height - adView.frame.size.height,
                               adView.frame.size.width,
                               adView.frame.size.height );


    // (Mandatory) Add the ad into current view
    [self.view addSubview: adView];

    // (Mandatory) Trigger loading of the new ad.
    [adView loadNextAd];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    
    // One must clear the ad dispaly delegate when the view is
    // unloaded
    adView.adDisplayDelegate = nil;
}

/**
 * This method is invoked when the ad is displayed in the view.
 * 
 * @param ad     Ad that was just displayed. Guranteed not to be null.
 * @param view   Ad view in which the ad was displayed. It will be this controller's view.
 */
-(void) ad:(ALAd *) ad wasDisplayedIn: (ALAdView *)view;
{
    // Resize main view to give room for the Ad view
    CGRect mainViewFrame = CGRectMake( 0, 
                                       0,
                                       mainView.frame.size.width,
                                       mainView.frame.size.height - adView.frame.size.height );
    [UIView animateWithDuration: 0.01
                          delay: 0.0
                        options: UIViewAnimationOptionCurveLinear
                     animations: ^{
                         mainView.frame = mainViewFrame;
                     }
                     completion: NULL];
}

/**
 * This method is invoked when the ad is hidden from in the view. This occurs
 * when the ad is rotated or when it is explicitly closed.
 * 
 * @param ad     Ad that was just hidden. Guranteed not to be null.
 * @param view   Ad view in which the ad was hidden. It will be this controller's view.
 */
-(void) ad:(ALAd *) ad wasHiddenIn: (ALAdView *)view
{
    // Resize main view to fill the whole screen
    CGRect mainViewFrame = CGRectMake( 0, 
                                       0,
                                       mainView.frame.size.width,
                                       self.view.frame.size.height );
    [UIView animateWithDuration: 0.01
                          delay: 0.0
                        options: UIViewAnimationOptionCurveLinear
                     animations: ^{
                         mainView.frame = mainViewFrame;
                     }
                     completion: NULL];
}

-(void)ad:(ALAd *)ad wasClickedIn:(UIView *)view
{
    NSLog(@"wasClickedIn");
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
