//
//  ViewController.m
//  Quiz
//
//  Created by Daryl Dalman on 2/4/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)answer1:(id)sender{
    label.text = @"No";
    
}

-(IBAction)answer2:(id)sender{
    label.text = @"Yes";

    
}

-(IBAction)answer3:(id)sender{
    label.text = @"No";

    
}






- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
