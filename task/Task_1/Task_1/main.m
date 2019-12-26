//
//  main.m
//  Task_1
//
//  Created by REYNIKOV ANTON on 13.12.2019.
//  Copyright © 2019 REYNIKOV ANTON. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IwuSkills: NSObject

- (NSInteger)maxdiff:(NSArray *)arr;

@end

@implementation IwuSkills

- (NSInteger)maxdiff:(NSArray *)arr {
    int diff = 0;
    for (int i = 0; i < (arr.count - 1); i++) {
        int a = [arr[i] intValue];//arr[i] or [arr objectAtIndex:i]int
        int b = [arr[i + 1] intValue];
        int c = a - b;
        if (abs(c) > diff) {
            diff = abs(c);
        }
    }
    NSLog(@"%d",diff);
    return diff;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        IwuSkills *max = [IwuSkills new];
        NSArray *arr = @[@1, @1, @1, @1];
        [max maxdiff:arr];
        arr = @[@-1, @4, @10, @3, @-2];
        [max maxdiff:arr];
        arr = @[@10, @11, @13];
        [max maxdiff:arr];
        arr = @[@-2, @-2, @-2, @-2, @-2];
        [max maxdiff:arr];
        arr = @[@-1, @1, @-3, @-4];
        [max maxdiff:arr];
    }
    return 0;
}
