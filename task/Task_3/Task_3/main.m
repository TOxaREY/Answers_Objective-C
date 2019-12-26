//
//  main.m
//  Task_3
//
//  Created by REYNIKOV ANTON on 13.12.2019.
//  Copyright © 2019 REYNIKOV ANTON. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IwuSkills: NSObject

- (NSInteger)pairDifferenceCount:(NSArray *)arr :(NSInteger)k;

@end

@implementation IwuSkills

- (NSInteger)pairDifferenceCount:(NSArray *)arr :(NSInteger)k {
    NSMutableArray *array = [NSMutableArray new];
    array = [NSMutableArray arrayWithArray:arr];//[arr mutableCopy]
    int count = 0;
    int max = [[array valueForKeyPath:@"@max.self"] intValue];
    while (max >= k) {
        if (max == k && [[array valueForKeyPath:@"@min.self"] intValue] != 0) {
            break;
        }
        for (int i = 0; i < array.count; i++) {
            if ([array[i] intValue]  == (max - k)) {//arr[i] or [arr objectAtIndex:i]int
                count += 1;
                for (int j = 0; j < array.count; j++) {
                    if ([array[j] intValue] == max) {
                        [array replaceObjectAtIndex:j withObject:@-1];
                    }
                }
                int x = -1;
                NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF != %d", x];
                NSArray *arrr = [array filteredArrayUsingPredicate:predicate];
                array = [NSMutableArray arrayWithArray:arrr];
                if (array.count == 0) {
                    max = -1;
                    break;
                }
                max = [[array valueForKeyPath:@"@max.self"] intValue];
            }
        }
    }
    NSLog(@"%d",count);
    return count;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        IwuSkills *pair = [IwuSkills new];
        NSArray *arr = @[@1, @5, @3, @4, @2];
        [pair pairDifferenceCount:arr :3];
        arr = @[@8, @12, @16, @4, @0, @20];
        [pair pairDifferenceCount:arr :4];
        arr = @[@1, @4, @3, @0, @2, @5, @7, @8, @9, @6];
        [pair pairDifferenceCount:arr :3];
        arr = @[@4, @4, @4, @2, @2];
        [pair pairDifferenceCount:arr :0];
    }
    return 0;
}
