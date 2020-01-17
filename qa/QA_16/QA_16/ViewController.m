//
//  ViewController.m
//  QA_16
//
//  Created by REYNIKOV ANTON on 17.01.2020.
//  Copyright © 2020 REYNIKOV ANTON. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    __block int count = 0;
    void (^countBlock)() = ^() {
        NSLog(@"%d", count);
    };
    count++;
    NSLog(@"%d", count);
    countBlock();
}
/*ОТВЕТ
1
1
*/

@end
