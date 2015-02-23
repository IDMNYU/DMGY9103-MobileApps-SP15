//
//  BNRHypnosisViewController.m
//  HypnoNerd
//
//  Created by Student on 2/22/15.
//  Copyright (c) 2015 Student. All rights reserved.
//

#import "BNRHypnosisViewController.h"
#import "BNRHypnosisView.h"


@implementation BNRHypnosisViewController



-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self){
        //set the tab's bar item's title
        self.tabBarItem.title = @"Hypnotize";
        //create a uimage from a file
        //this will use hypno2x.png on retina display devices
        UIImage *i = [UIImage imageNamed:@"Hypno.png"];
        
        //put that image on the tab bar item
        self.tabBarItem.image = i;

    }
    return self;
    
}



-(void) loadView{
    
    //create a view
    BNRHypnosisView *backgroundView = [[BNRHypnosisView alloc]init];
    
    //Set it as *the* view of this view controller
    self.view = backgroundView;
}

-(void)viewDidLoad{
        //always call the super implementation of the viewDidLoad
    [super viewDidLoad];
    NSLog(@"BNRReminderViewController loaded its view.");
}



@end
