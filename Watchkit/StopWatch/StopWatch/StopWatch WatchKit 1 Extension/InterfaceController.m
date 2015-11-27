//
//  InterfaceController.m
//  StopWatch WatchKit 1 Extension
//
//  Created by Alejandro on 11/22/15.
//  Copyright © 2015 GoNet. All rights reserved.
//

#import "InterfaceController.h"
#import "LapRecordRow.h"

@interface InterfaceController()

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)startTime {
    if(_isPaused) {
        _isPaused = NO;
        self.startDate = self.currentDate;
    } else {
        self.startDate = [NSDate date];
    }
    self.watchTimer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                                       target:self
                                                     selector:@selector(updateTimer)
                                                     userInfo:nil
                                                      repeats:YES];
}

- (IBAction)lapTime {
    if(_lapRecords == nil) {
        _lapRecords = [[NSMutableArray alloc] init];
    }
    [self.lapRecords addObject:self.lapTimeRecord];
    [self updateTable];
}

- (IBAction)pauseTime {
    _isPaused = YES;
}

- (IBAction)resetTimeAndData {
}

- (void)updateTable {
    NSString *rowType = @"LapRecordRow";
    [self.tblLapRecords setNumberOfRows:self.lapRecords.count withRowType:rowType];
    for(int index = 0; index < self.lapRecords.count; index++) {
        LapRecordRow *row = [self.tblLapRecords rowControllerAtIndex:index];
        [row.timeLabel setText:[self.lapRecords objectAtIndex:index]];
    }
}

- (void)updateTimer {
    if(!_isPaused) {
        NSDate *dateNow = [NSDate date];
        NSTimeInterval interval = [dateNow timeIntervalSinceDate:self.startDate];
        NSDate *timeDate = [NSDate dateWithTimeIntervalSince1970:interval];
        
        NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
        [dateFormat setDateFormat:@"HH:mm:ss"];
        [dateFormat setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0.0]];
        
        NSString *timeString = [dateFormat stringFromDate:timeDate];
        [self.lblTime setText:timeString];
        self.lapTimeRecord = timeString;
        self.currentDate = self.startDate;
    }
}

@end