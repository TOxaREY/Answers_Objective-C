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
    // 1 Sync блокирует вызывающий поток (последовательное выполнение) в другой очереди
    dispatch_sync(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^ {
        // 2 После async управление передается вызывающему потоку п.1
        dispatch_async(dispatch_get_main_queue(), ^ {
            // 4 Вызов 4
            NSLog(@"2");
        });
        // 3 Пока п.2 ставит задачу и начинает её выполнять вызывается 3
        NSLog(@"3");
    });
    // 5 п.1 завершил задачу и передал выполнение вызывающему потоку. Вызывается 1
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
