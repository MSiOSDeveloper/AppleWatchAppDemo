//
//  InterfaceController.m
//  WatchPlayground WatchKit Extension
//
//  Created by Liangjun Jiang on 11/19/14.
//  Copyright (c) 2014 Liangjun Jiang. All rights reserved.
//

#import "InterfaceController.h"
#import "RowController.h"
#import "Player.h"

@interface InterfaceController()
@property (nonatomic, weak) IBOutlet WKInterfaceTable *localTable;
@property (nonatomic, strong) NSArray *data;
@end


@implementation InterfaceController

- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
    if (self){
        // Initialize variables here.
        // Configure interface objects here.
        NSLog(@"%@ initWithContext", self);
        [self loadTableData];
        
    }
    return self;
}

-(void)loadTableData{
    self.data = @[@{@"name":@"Jeremy Lin",
                    @"number":@"17",
                    @"smallImageName":@"17_small",
                    @"fullsizeImageName":@"17"
                    },
                  @{@"name":@"Nick Young",
                    @"number":@"0",
                    @"smallImageName":@"0_small",
                    @"fullsizeImageName":@"O"
                    },
                  @{@"name":@"Kobe Bryant",
                        @"number":@"24",
                        @"smallImageName":@"24_small",
                        @"fullsizeImageName":@"24"
                        },
                  @{@"name":@"Steve Nash",
                    @"number":@"10",
                    @"smallImageName":@"10_small",
                    @"fullsizeImageName":@"10"
                    },
                  @{@"name":@"Carlos Boozer",
                    @"number":@"5",
                    @"smallImageName":@"25_small",
                    @"fullsizeImageName":@"25"
                    },
                  
                  ];
    [self.localTable setNumberOfRows:[self.data count] withRowType:@"default"];
    for (NSInteger i = 0; i< [self.data count]; i++) {
        RowController *row = [self.localTable rowControllerAtIndex:i];
      
        Player *player = [[Player alloc] initWithAttritue:self.data[i]];
        [row setPlayer:player];
    }
    
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    NSLog(@"%@ will activate", self);
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    NSLog(@"%@ did deactivate", self);
}

@end



