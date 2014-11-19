//
//  FakeDataModel.h
//  WatchPlayground
//
//  Created by Liangjun Jiang on 11/19/14.
//  Copyright (c) 2014 Liangjun Jiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject
@property (nonatomic,strong) NSNumber *number;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *smallImageName;
@property (nonatomic, copy) NSString *fullsizeImageName;

-(instancetype)initWithAttritue:(NSDictionary *)attr;
@end
