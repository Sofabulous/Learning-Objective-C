//
//  main.m
//  BOOL Party
//
//  Created by yukun on 2018/1/17.
//  Copyright © 2018年 SouthWest University-yukun. All rights reserved.
//

#import <Foundation/Foundation.h>

//returns NO if the two integers have the same
//value,Yes otherwise
BOOL areIntsDifferent(int thing1,int thing2)
{
    if (thing1 == thing2) {
        return (NO);
    } else {
        return (YES);
    }
    
}

//areIntsDifferent
//given a NO value,return the human-readble
//string "NO".Otherwise return "YES"
NSString *boolString(BOOL yesNo)
{
    if (yesNo == NO) {
        return (@"NO");
    }else {
        return (@"YES");
    }
    
}//boolString

int main(int argc, const char * argv[]) {
    BOOL areTheyDifferent;
    areTheyDifferent = areIntsDifferent(5, 5);
    NSLog(@"are %d and %d different? %@",5,5,boolString(areTheyDifferent));
    areTheyDifferent = areIntsDifferent(23, 42);
    NSLog(@"are %d and %d different? %@",23,42,boolString(areTheyDifferent));
    return 0;
}
