//
//  AVPlayerDemoPlaybackView.m
//  MultipleAVMoviePlayers
//
//  Created by Chris Milne on 11/6/14.
//  Copyright (c) 2014 ideo. All rights reserved.
//

#import "AVPlayerDemoPlaybackView.h"
#import <AVFoundation/AVFoundation.h>



@implementation AVPlayerDemoPlaybackView

+ (Class)layerClass
{
    return [AVPlayerLayer class];
}

- (AVPlayer*)player
{
    return [(AVPlayerLayer*)[self layer] player];
}

- (void)setPlayer:(AVPlayer*)player
{
    [(AVPlayerLayer*)[self layer] setPlayer:player];
}

/* Specifies how the video is displayed within a player layer’s bounds.
 (AVLayerVideoGravityResizeAspect is default) */
- (void)setVideoFillMode:(NSString *)fillMode
{
    AVPlayerLayer *playerLayer = (AVPlayerLayer*)[self layer];
    playerLayer.videoGravity = fillMode;
}

@end
