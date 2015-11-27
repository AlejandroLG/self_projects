//
//  LapRecordRow.h
//  StopWatch
//
//  Created by Alejandro on 11/22/15.
//  Copyright © 2015 GoNet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WatchKit/WatchKit.h>

@interface LapRecordRow : NSObject

@property (nonatomic, weak) IBOutlet WKInterfaceLabel *timeLabel;

@end