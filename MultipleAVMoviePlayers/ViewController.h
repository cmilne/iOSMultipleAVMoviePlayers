//
//  ViewController.h
//  MultipleAVMoviePlayers
//
//  Created by Chris Milne on 11/6/14.
//  Copyright (c) 2014 ideo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "AVPlayerDemoPlaybackView.h"

@class AVPlayerDemoPlaybackView;
@class AVPlayer;

@interface ViewController : UIViewController {
    AVPlayer* mPlayer;
    AVPlayer* mPlayer2;
    IBOutlet AVPlayerDemoPlaybackView  *mPlaybackView;
    IBOutlet AVPlayerDemoPlaybackView  *mPlaybackView2;
}

@property (readwrite, retain) AVPlayer* mPlayer;
@property (readwrite, retain) AVPlayer* mPlayer2;
@property (nonatomic, retain) IBOutlet AVPlayerDemoPlaybackView *mPlaybackView;
@property (nonatomic, retain) IBOutlet AVPlayerDemoPlaybackView *mPlaybackView2;

- (void)observeValueForKeyPath:(NSString*) path ofObject:(id)object change:(NSDictionary*)change context:(void*)context;

@end

