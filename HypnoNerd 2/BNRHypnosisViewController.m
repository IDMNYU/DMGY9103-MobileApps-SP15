//
//  BNRHypnosisViewController.m
//  HypnoNerd
//
//  Created by Student on 2/22/15.
//  Copyright (c) 2015 Student. All rights reserved.
//

#import "BNRHypnosisViewController.h"
#import "BNRHypnosisView.h"



@interface BNRHypnosisViewController () <UITextFieldDelegate>

@end

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
    CGRect frame = [UIScreen mainScreen].bounds;
    BNRHypnosisView *backgroundView = [[BNRHypnosisView alloc]initWithFrame:frame];
    
    CGRect textFieldRect = CGRectMake(40, 70, 240, 30);
    UITextField *textField = [[UITextField alloc]initWithFrame:textFieldRect];
    
    //setting boarder style on the text field will allow us to see it more easily
    textField.borderStyle = UITextBorderStyleRoundedRect;
    
    textField.placeholder = @"Hypnotize me";
    textField.returnKeyType = UIReturnKeyDone;
    
    textField.delegate = self;
    
    
    
    [backgroundView addSubview:textField];
    
    
    //Set it as *the* view of this view controller
    self.view = backgroundView;
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    //NSLog(@"%@", textField.text);
    
    [self drawHypnoticMessage:textField.text];
    textField.text = @"";
    [textField resignFirstResponder];
    
    
    
    return YES;
}

-(void)drawHypnoticMessage:(NSString *)message{
    for(int i = 0; i < 20; i++){
        UILabel *messageLabel = [[UILabel alloc]init];
        
        //configure the label's color and text
        messageLabel.backgroundColor = [UIColor clearColor];
        
        messageLabel.textColor = [UIColor whiteColor];
        messageLabel.text = message;
        
        //this method resizes the label, which will be relative to the text that it is displaying
        
        [messageLabel sizeToFit];
        
        //get a random x value that fits within hypnosis view's width
        int width = (int)(self.view.bounds.size.width);
        int x = arc4random() % width;
        
        //get random y value that fits within hypnosis view;'s height
        int height = (int)(self.view.bounds.size.height-messageLabel.bounds.size.height);
        int y = arc4random() % height;
        
        //update the labels frame
        CGRect frame = messageLabel.frame;
        frame.origin = CGPointMake(x, y);
        messageLabel.frame = frame;
        //add the label to the hiearchy
        [self.view addSubview:messageLabel];
        
        
        UIInterpolatingMotionEffect *motionEffect = [[UIInterpolatingMotionEffect alloc]initWithKeyPath:@"center.x"
                                                    type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];
        
        motionEffect.minimumRelativeValue = @(-25);
        motionEffect.maximumRelativeValue = @(25);
        [messageLabel addMotionEffect:motionEffect];
        
        motionEffect = [[UIInterpolatingMotionEffect alloc]initWithKeyPath:@"center.y"
                        type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];
        
        motionEffect.minimumRelativeValue = @(-25);
        motionEffect.maximumRelativeValue = @(25);
        [messageLabel addMotionEffect:motionEffect];
        
    }
}




-(void)viewDidLoad{
        //always call the super implementation of the viewDidLoad
    [super viewDidLoad];
    NSLog(@"BNRReminderViewController loaded its view.");
}



@end
