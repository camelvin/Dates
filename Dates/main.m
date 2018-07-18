//
//  main.m
//  Dates
//
//  Created by PHOENIXMAC on 2018-07-15.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSNumber  *age =[NSNumber numberWithInt:34];
        NSLog(@"%@",age);
        
        NSDate *now = [NSDate date];
        NSLog(@"%@",now);
        
       
        NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
        [formatter setDateFormat:( @"yyyy-MM-dd")];
       NSString *dateString = [formatter stringFromDate:[NSDate date]];
        
         NSLog(@"%@",dateString);
        
        NSDateComponents *comps =[[NSDateComponents alloc]init];
        [comps setYear:1984];
        [comps setMonth:4];
        [comps setDay:20];
        [comps setHour:6];
        [comps setMinute:20];
        [comps setSecond:0];
        
        NSCalendar *g =[[NSCalendar alloc]initWithCalendarIdentifier: NSGregorianCalendar];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        NSDate *earlierDate = dateOfBirth ;
        NSDate *laterDate =[NSDate date];
        double d = [laterDate timeIntervalSinceDate:earlierDate];
        NSLog(@"It has been  %f seconds between %@ and %@ ", d , earlierDate, laterDate );
    }
    return 0;
}
