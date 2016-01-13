//
//  main.m
//  BinarySearch2
//
//  Created by Benson Huynh on 2016-01-12.
//  Copyright © 2016 Benson Huynh. All rights reserved.
//

#import <Foundation/Foundation.h>


// function should take (1) an array
// and (2) a target number
// and return the index if it's found
// or -1 if it isn't found


int binarySearch(int targetNumber, NSArray *sortedNumberArray) {
    
    int min = 0;
    int max = (int)[sortedNumberArray count];
    
    int midpoint = (min + max) / 2;
    
    NSString *midValueString = [sortedNumberArray objectAtIndex: midpoint];
    
    int midValue = [midValueString intValue];
    
    if ( targetNumber < midValue){
        
        return binarySearch(targetNumber, sortedNumberArray);
        
    }
    
    else if ( targetNumber > midValue ){
        
        return binarySearch(targetNumber, sortedNumberArray);
    }
    
    else if (targetNumber == midValue) {
        
        NSLog(@"Target Number is: %d! Midpoint is: %d", targetNumber, midpoint);
        
    }
    
    return -1;
    
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        NSArray *sortedNumberArray = @[@"1", @"3", @"5", @"7", @"9", @"11", @"13", @"15"];
        
        
        binarySearch(9, sortedNumberArray);
        
        
    }
}