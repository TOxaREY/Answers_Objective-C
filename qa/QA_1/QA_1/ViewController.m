//
//  ViewController.m
//  QA_1
//
//  Created by REYNIKOV ANTON on 26.12.2019.
//  Copyright © 2019 REYNIKOV ANTON. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
            // 1 После async управление передается вызывающему потоку
            dispatch_async(dispatch_get_main_queue(), ^
                   {
        // 3 Выполнение "A" в асинхронном потоке пока п.1 вызвал п.4 и он еще не сработал
        NSLog(@"A");
        // 4 После async управление передается вызывающему потоку
        dispatch_async(dispatch_get_main_queue(), ^
                       {
            // 6 Выполнение "B"
            NSLog(@"B");
        });
        // 5 Выполнение "C" в потоке пока п.4 вызвал выполнение и оно еще не сработал
        NSLog(@"C");
    });
    // 2 Вызывающий поток вызывает "D"
    NSLog(@"D");
}

/*ОТВЕТ
D
A
C
B
*/
@end
