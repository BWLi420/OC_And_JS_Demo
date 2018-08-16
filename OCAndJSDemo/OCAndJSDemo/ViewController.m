//
//  ViewController.m
//  OCAndJSDemo
//
//  Created by 李勃文 on 2018/8/15.
//  Copyright © 2018年 lbw. All rights reserved.
//

#import "ViewController.h"

#import "JSTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /** 项目需要导入 JavaScriptCore.framework */
    [JSTool gg];
}

@end
