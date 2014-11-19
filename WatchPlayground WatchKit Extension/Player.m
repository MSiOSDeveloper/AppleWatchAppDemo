//
//  FakeDataModel.m
//  WatchPlayground
//
//  Created by Liangjun Jiang on 11/19/14.
//  Copyright (c) 2014 Liangjun Jiang. All rights reserved.
//

#import "Player.h"

@implementation Player
@synthesize name, number, smallImageName,fullsizeImageName;

-(instancetype)initWithAttritue:(NSDictionary *)attr
{
    self = [super init];
    if (self) {
        self.name = attr[@"name"];
        self.number = attr[@"number"];
        self.smallImageName = attr[@"smallImageName"];
        self.fullsizeImageName = attr[@"fullsizeImageName"];
    }
    
    return self;
}
@end
