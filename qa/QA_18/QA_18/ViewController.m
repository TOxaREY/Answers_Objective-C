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
    // 1 Sync блокирует вызывающий поток и начинает последовательное выполнение в
    //глобальной параллельной очереди с самым низким приоритетом
    dispatch_sync(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^ {
        //Задачи внутри любой очереди выполняются последовательно
        // 2 После async управление передается вызывающему потоку п.1
        dispatch_async(dispatch_get_main_queue(), ^ {
            // 5
            NSLog(@"2");
        });
        // 3 Пока п.2 ставит задачу и начинает её выполнять вызывается 3
        NSLog(@"3");
    });
    // 4 п.1 завершил задачу и передал выполнение вызывающему потоку.
    //То есть выполнил п.2 и п.3.
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
