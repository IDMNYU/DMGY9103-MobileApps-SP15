//
//  BNRItem.h
//  RandomItems
//
//  Created by Daryl Dalman on 2/4/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
/*
{
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
    
    BNRItem *_containedItem;
    WEAK_IMPORT_ATTRIBUTE BNRItem *_container;
    
}
*/

+(instancetype)randomItem;

//Designated initializer for BNRItem
-(instancetype)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber;
-(instancetype)initWithItemName:(NSString *)name;

@property(nonatomic, strong) BNRItem *containedItem;
@property(nonatomic, weak) BNRItem *container;

@property(nonatomic, copy) NSString *itemName;
@property(nonatomic, copy) NSString *serialNumber;
@property(nonatomic) int valueInDollars;
@property(nonatomic, readonly, strong) NSDate *dateCreated;


/*
-(void)setItemName: (NSString *)str;
-(void) setItemName: (NSString *)str;
-(NSString *)itemName;

-(void)setSerialNumber: (NSString *)str;
-(NSString *) serialNumber;

-(void)setValueInDollars: (int)v;
-(int)valueInDollars;
-(NSDate *)dateCreated;
-(void)setContainedItem:(BNRItem *)item;
-(BNRItem *)containedItem;
-(void)setContainer:(BNRItem *)item;
-(BNRItem *)container;
*/
@end
