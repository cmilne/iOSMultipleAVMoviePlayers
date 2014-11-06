//
//  ViewController.m
//  MultipleAVMoviePlayers
//
//  Created by Chris Milne on 11/6/14.
//  Copyright (c) 2014 ideo. All rights reserved.
//

#import "ViewController.h"

static void *AVPlayerDemoPlaybackViewControllerStatusObservationContext = &AVPlayerDemoPlaybackViewControllerStatusObservationContext;

@implementation ViewController

@synthesize mPlayer, mPlaybackView, mPlaybackView2, mPlayer2;

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"BeerPour1" ofType:@"mp4"]];
    self.mPlayer = [AVPlayer playerWithURL:url];

    NSURL *url2 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"BeerPour2" ofType:@"mp4"]];
    self.mPlayer2 = [AVPlayer playerWithURL:url2];
    [mPlayer addObserver:self forKeyPath:@"status" options:0 context:AVPlayerDemoPlaybackViewControllerStatusObservationContext];
}

- (void)observeValueForKeyPath:(NSString*) path ofObject:(id)object change:(NSDictionary*)change context:(void*)context
{
    if (mPlayer.status == AVPlayerStatusReadyToPlay) {
        [self.mPlaybackView2 setPlayer:self.mPlayer2];
        [self.mPlaybackView setPlayer:self.mPlayer];
        [self.mPlayer play];
        [self.mPlayer2 play];
    }
}
@end
