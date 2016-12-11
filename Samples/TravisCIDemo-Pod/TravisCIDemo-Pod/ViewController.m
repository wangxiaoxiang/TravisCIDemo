//
//  ViewController.m
//  TravisCIDemo-Pod
//
//  Created by 汪潇翔 on 11/12/2016.
//  Copyright © 2016 汪潇翔. All rights reserved.
//

#import "ViewController.h"
#import <TravisCIDemo/TravisCIDemo.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *abc = [TCIURLCoder decode:@"https://www.baidu.com/s?ie=UTF-8&wd=%E4%BC%98%E9%85%B7"];
    NSLog(@"%@",abc);
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
