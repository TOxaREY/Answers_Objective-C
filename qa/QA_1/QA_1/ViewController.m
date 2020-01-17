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
            dispatch_async(dispatch_get_main_queue(), ^
                   {
        NSLog(@"A");
        dispatch_async(dispatch_get_main_queue(), ^
                       {
            NSLog(@"B");
        });
        NSLog(@"C");
    });
    NSLog(@"D");
}

/*ОТВЕТ
D
A
C
B
*/
@end
