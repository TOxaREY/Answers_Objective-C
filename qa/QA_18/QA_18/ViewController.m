//
//  ViewController.m
//  QA_18
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
    dispatch_sync(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^ {
        dispatch_async(dispatch_get_main_queue(), ^ {
            NSLog(@"2");
        });
        NSLog(@"3");
    });
    NSLog(@"1");
}

/*ОТВЕТ
 3
 1
 2
 */
@end

/*
 ● 312

 ○ 123

 ○ 321

 ○ deadlock

 ○ 231
 */
