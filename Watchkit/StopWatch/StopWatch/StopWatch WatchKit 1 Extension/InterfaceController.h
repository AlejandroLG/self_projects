//
//  InterfaceController.h
//  StopWatch WatchKit 1 Extension
//
//  Created by Alejandro on 11/22/15.
//  Copyright © 2015 GoNet. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController : WKInterfaceController

@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *lblTime;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceTable *tblLapRecords;
@property (strong, nonatomic) NSTimer *watchTimer;
@property (strong, nonatomic) NSDate *startDate;
@property (strong, nonatomic) NSDate *currentDate;
@property (strong, nonatomic) NSString *lapTimeRecord;
@property (strong, nonatomic) NSMutableArray *lapRecords;
@property (nonatomic) BOOL isPaused;

- (IBAction)startTime;
- (IBAction)lapTime;
- (IBAction)pauseTime;
- (IBAction)resetTimeAndData;

@end
