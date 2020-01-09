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
//Запускаем в проекте для приложенией из-за такого, что в командной строке завершение происходит сразу не ожидая async
//Задача будет выполняться параллельно async
            dispatch_async(dispatch_get_main_queue(), ^
                   {
//Сработает А
        NSLog(@"A");
//Пока задача передается в параллельный поток сработает С в первом параллельном потоке
        dispatch_async(dispatch_get_main_queue(), ^
                       {
            NSLog(@"B");
        });
        NSLog(@"C");
    });
//Первым сработает D, потому что он в основном потоке.
    NSLog(@"D");
}

/*ОТВЕТ
D
A
C
B
*/
@end
