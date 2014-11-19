//
//  RowController.m
//  WatchPlayground
//
//  Created by Liangjun Jiang on 11/19/14.
//  Copyright (c) 2014 Liangjun Jiang. All rights reserved.
//

#import "RowController.h"
#import "Player.h"
@implementation RowController
- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
    if (self){
        // Initialize variables here.
        // Configure interface objects here.
        NSLog(@"%@ initWithContext", self);
    }
    return self;
}

-(void)setPlayer:(Player *)player
{
    if (_player != player) {
        _player = player;
        [self updateView];
    }
    
}

-(void)updateView{
    self.titleLabel.text = [NSString stringWithFormat:@"%@ %@", self.player.number, self.player.name];
    [self.imageView setImageNamed:self.player.smallImageName];
}

@end
