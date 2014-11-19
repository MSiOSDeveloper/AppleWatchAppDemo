//
//  RowController.h
//  WatchPlayground
//
//  Created by Liangjun Jiang on 11/19/14.
//  Copyright (c) 2014 Liangjun Jiang. All rights reserved.
//

#import <WatchKit/WatchKit.h>
@class Player;
@interface RowController : WKInterfaceController
@property (nonatomic, weak) IBOutlet WKInterfaceLabel *titleLabel;
@property (nonatomic, weak) IBOutlet WKInterfaceImage *imageView;
@property (nonatomic, strong) Player *player;
@end
