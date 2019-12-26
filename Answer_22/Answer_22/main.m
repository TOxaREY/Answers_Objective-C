//
//  main.m
//  Answer_22
//
//  Created by REYNIKOV ANTON on 13.12.2019.
//  Copyright © 2019 REYNIKOV ANTON. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IwuSkills: NSObject

-(NSArray *)sequences:(NSInteger)n;

@end

@implementation IwuSkills

- (NSArray *)sequences:(NSInteger)n {
    int tmpN = (int)n;
    NSMutableArray *arr = [NSMutableArray new];
    NSMutableArray *tmpArr = [NSMutableArray new];
    if (n == 0) {
        NSLog(@"%@",arr);
        return arr;
    } else {
        while (tmpN != 0) {
            for (int i = 1; i < (tmpN + 1); i++) {
                [tmpArr addObject:[NSString stringWithFormat:@"%d",i]];
            }
            if (tmpN % 2 == 0) {
                tmpArr = [[[tmpArr reverseObjectEnumerator] allObjects] mutableCopy];
            }
            [arr addObject:[tmpArr componentsJoinedByString:@"-"]];
            [tmpArr removeAllObjects];
            tmpN -= 1;
        }
        arr = [[[arr reverseObjectEnumerator] allObjects] mutableCopy];
        NSLog(@"%@",arr);
        return arr;
    }
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        IwuSkills *seq = [IwuSkills new];
        [seq sequences: 0];
        [seq sequences: 4];
        [seq sequences: 10];
    }
    return 0;
}
