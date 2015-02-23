//
//  BNRReminderViewController.m
//  HypnoNerd
//
//  Created by Student on 2/22/15.
//  Copyright (c) 2015 Student. All rights reserved.
//

#import "BNRReminderViewController.h"

@interface BNRReminderViewController ()

@property (nonatomic, weak) IBOutlet UIDatePicker *datePicker;

@end


@implementation BNRReminderViewController



-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self){
        //get the tab bar item
        UITabBarItem *tbi = self.tabBarItem;
        
        //give it a label
        tbi.title = @"Reminder";
        
        //give it an image
        UIImage *i = [UIImage imageNamed:@"Time.png"];
        tbi.image = i;
    }
    return self;
}


-(IBAction)addReminder:(id)sender{
    NSDate *date = self.datePicker.date;
    NSLog(@"Setting a reminder for %@", date);
    
    //update the addReminder to add a local notification
    
    UILocalNotification *note = [[UILocalNotification alloc]init];
    note.alertBody = @"Hypnotize me!";
    note.fireDate = date;
    
    [[UIApplication sharedApplication]scheduleLocalNotification:note];
}

-(void)viewDidLoad{
    [super viewDidLoad];
    NSLog(@"BNRReminderViewController loads its view.");
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.datePicker.minimumDate = [NSDate dateWithTimeIntervalSinceNow:60];
}



@end
