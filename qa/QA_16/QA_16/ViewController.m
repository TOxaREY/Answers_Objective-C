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
//    int count = 0;
    __block int count = 0;
    /*
     Блок в Objective-C выглядит так:
     int multiplier = 7;
     int (^myBlock)(int) = ^(int num) { return num * multiplier;};
     NSLog(@”%d”, myBlock(4)); // выведет 28
     Здесь int это тип значения, в нашем случае это void
     myBlock - имя блока, в нашем случае countBlock
     Блоки захватывают переменную не изменяя её.
     Если бы мы захотели изменить ее значение в теле блока,
     нам нужно пометить переменную модификатором __block,
     что мы и сделали строкой выше.
     */
    void (^countBlock)() = ^() {
        NSLog(@"%d", count);
    };
    count++;
    NSLog(@"%d", count); // 1
    countBlock(); /* 1 потому, что указав __block, наша переменая
                     может изменяться в блоке после захвата.
                     Для теста уберем __block. Теперь переменная
                     count после захвата неизменна и ответ 1,0
                   */
}
/*ОТВЕТ
1
1
*/

@end
/*
 ○ 0, 1

 ● 1, 1

 ○ 1, 0

 ○ 0, 0
 */
