//
//  main.m
//  RandomItems
//
//  Created by Daryl Dalman on 2/4/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        /*
        
        // Create a mutable array object, store its address in items variable
        
        NSMutableArray *items = [[NSMutableArray alloc]init];
        
        //send the message addObject to the NSMutableArray pointed to
        //by the variable items passing a string each time.
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        //send another message, insertObject: atIndex, to the same array object
        [items insertObject:@"Zero" atIndex:0];
        
    
        //destroy the mutable array
        
        items = nil;
        
        //iterating over an array
        for (int i = 0; i <[items count]; i++) {
            NSString *item = [items objectAtIndex:i];
            NSLog(@"%@",item);
        }
        
        for(NSString *item in items){
            NSLog(@"%@",item);
        }
        items = nil;
    
        
    
        
        for (NSString *item in items) {
            NSLog(@"%@",item);
        }
        
        
        BNRItem *item = [[BNRItem alloc]init];
        NSLog(@" %@ %@ %@ %d", [item itemName], [item dateCreated], [item serialNumber], [item valueInDollars]);
        
        items = nil;
    
        
        for(NSString *item in items){
            NSLog(@"%@",item);
        }
        
        BNRItem *item = [[BNRItem alloc]init];
        
        //This creates an NSString, "Red Sofa," and gives it to the BNRItem
        [item setItemName:@"Red Sofa"];

        //This creates an NSString,"A1B2C and gives it to the BNRItem"
        [item setSerialNumber:@"A1B2C"];
        
        //This sends the value 100 to be used as the valueInDollars of this BNRItem
        [item setValueInDollars:100];
        
        NSLog(@"%@ %@ %@ %d",[item itemName], [item dateCreated], [item serialNumber], [item valueInDollars]);
                              
        
        
        BNRItem *item = [[BNRItem alloc]init];
        
        //set valueInDollars by sending an explicit message
        [item setValueInDollars:5];
        
        //get valueInDollars by sending an explicit message
        int value = [item valueInDollars];
        
    
         //using dot notation
         
         //BRNItem *item = [[BNRItem alloc]init];
         
         //set valueInDollars using dot syntax
         item.ValueInDollars = 5;
        
        BNRItem *item = [[BNRItem alloc]init];
        
        item.itemName = @"Red Sofa";
        
        item.serialNumber = @"A1B2C";
        
        item.valueInDollars = 100;
        
        
        //NSLog(@"@ %@ %@ %d", item.itemName,item.dateCreated, item.serialNumber, item.valueInDollars);
        
        NSLog(@"%@", item);
        
        items = nil;
        
        
        
        for (NSString *item in items) {
            NSLog(@"%@",item);
        }
        
        BNRItem *item = [[BNRItem alloc]initWithItemName:@"Red Sofa"
                                          valueInDollars:100 serialNumber:@"A1B2C"];
        NSLog(@"%@",item);
        
        BNRItem *itemWithName = [[BNRItem alloc]initWithItemName:@"Blue Sofa"];
        NSLog(@"%@", itemWithName);
        
        BNRItem *itemWithNoName = [[BNRItem alloc]init];
        NSLog(@"%@",itemWithNoName);
        
        items = nil;
        */
        
        NSMutableArray *items = [[NSMutableArray alloc]init];
        
        //for (int i = 0; i <10; i++) {
          //  BNRItem *item = [BNRItem randomItem];
            //[items addObject:item];
        //}
        
        /*
        id lastObj = [items lastObject];
        //lastObj is an instance of BNRItem and will not understand the count message
        [lastObj count];
        */
        
        BNRItem *backpack = [[BNRItem alloc]initWithItemName:@"Backpack"];
        [items addObject:backpack];
        
        BNRItem *calculator = [[BNRItem alloc]initWithItemName:@"Calculator"];
        [items addObject:calculator];
        
        backpack.containedItem = calculator;
        
        backpack = nil;
        calculator = nil;
        
        for(BNRItem *item in items)
            NSLog(@"%@",item);
        
        NSLog(@"Setting items to nil...");
        items = nil;
        
    }
    return 0;
}
