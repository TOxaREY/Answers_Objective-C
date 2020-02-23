//
//  ViewController.m
//  QA_12
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
    // 1 После async управление передается вызывающему потоку
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^ {
        // 3 п.1 вызван в параллельную очередь с приорететом бэкграунд
        //поэтому при вызове очереди в главной очереди, она сработает раньше
        dispatch_sync(dispatch_get_main_queue(), ^ {
            // 4 Выполнение 2
            NSLog(@"2");
        });
        // 5 Выполнение 3
        NSLog(@"3");
    });
    // 2 Вызывающий поток вызывает 1
    NSLog(@"1");
}

/*ОТВЕТ
 1
 2
 3
 */
@end

/*
 ○ 321

 ● 123

 ○ 312

 ○ 132

 ○ deadlock

 */
