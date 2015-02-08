//
//  BNRHypnosisView.m
//  Hypnosister
//
//  Created by Daryl Dalman on 2/8/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "BNRHypnosisView.h"

@implementation BNRHypnosisView

-(void)drawRect:(CGRect)rect{
    CGRect bounds = self.bounds;
    
    
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height/ 2.0;
    
    //The circle will be the largest that will fit in the view
    //float radius = MIN(bounds.size.width, bounds.size.height)/ 2.0;
    
    float maxRadius = hypot(bounds.size.width, bounds.size.height);
    UIBezierPath *path = [[UIBezierPath alloc]init];
    
   // [path addArcWithCenter:center
   //                 radius:radius
   //                 startAngle:0.0
   //                 endAngle:M_PI
   //                 clockwise:YES];
    
    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -=20) {
        
        [path moveToPoint:CGPointMake(center.x + currentRadius, center.y)];
        
        [path addArcWithCenter:center
                        radius:currentRadius
                        startAngle:0.0
                        endAngle:M_PI * 2.0
                        clockwise:YES];
    }
    
    path.lineWidth = 10;
    
    [[UIColor lightGrayColor]setStroke];
    
    [path stroke];
    
}

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        self.backgroundColor =[UIColor clearColor];
    }
    return self;
}



@end
