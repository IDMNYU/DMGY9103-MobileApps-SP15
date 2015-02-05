//
//  BNRItem.m
//  RandomItems
//
//  Created by Daryl Dalman on 2/4/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

-(void)setItemName:(NSString *)str{
    _itemName = str;
}

-(NSString *)itemName{
    return _itemName;
}

-(void)setSerialNumber:(NSString *)str{
    _serialNumber = str;
}

-(NSString *)serialNumber{
    return _serialNumber;
}

-(void)setValueInDollars:(int)v{
    _valueInDollars = v;
}

-(int)valueInDollars{
    return _valueInDollars;
}

-(NSDate *)dateCreated{
    return _dateCreated;
}

-(NSString *)description{
    NSString *descriptionString = [[[NSString alloc]init] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@", self.itemName, self.serialNumber,self.valueInDollars, self.dateCreated];
    return descriptionString;
}

+(instancetype)randomItem
{
    
    //create an immutable array of three adjectives
    NSArray *randomAdjectiveList = @[@"Fluffy", @"Rusty", @"Shiny"];
    
    //create an immutable array of three nouns
    NSArray *randomNounList = @[@"Bear", @"Spork", @"Mac"];
    
    NSInteger adjectiveIndex = arc4random() % [randomAdjectiveList count];
    NSInteger nounIndex = arc4random() % [randomNounList count];
    
    /*
    NSString *randomName = [NSString stringWithFormat:@"%@ %@", [randomAdjectiveList objectAtIndex:adjectiveIndex], [randomNounList objectAtIndex:nounIndex]];
    */
    int randomValue = arc4random() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    'O' + arc4random() %10,
                                    'A' + arc4random() %26,
                                    'O' + arc4random() %10,
                                    'A' + arc4random() %26,
                                    'O' + arc4random() %10];
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@", randomAdjectiveList[adjectiveIndex], randomNounList[nounIndex]];

    BNRItem *newitem = [[self alloc]initWithItemName:randomName valueInDollars:randomValue serialNumber:randomSerialNumber];
    return newitem;

    
    
}

-(instancetype)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber
{
    //call the superclass's designated initializer
    self = [super init];
    
    if(self){
        //give the instance variables initial values
        _itemName = name;
        _serialNumber = sNumber;
        _valueInDollars = value;
        
        //set _dateCreated to the current date and time
        _dateCreated = [[NSDate alloc]init];
    }
    //Return the address of the newly initialized object
    return self;
}

-(instancetype)initWithItemName:(NSString *)name
{
    return [self initWithItemName:name valueInDollars:0 serialNumber:@""];
}

-(instancetype)init
{
    return [self initWithItemName:@"Item"];
}



@end
