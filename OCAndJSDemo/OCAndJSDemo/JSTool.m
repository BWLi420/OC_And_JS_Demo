//
//  JSTool.m
//  OCAndJSDemo
//
//  Created by 李勃文 on 2018/8/15.
//  Copyright © 2018年 lbw. All rights reserved.
//

#import "JSTool.h"
#import <JavaScriptCore/JavaScriptCore.h>

#define jsPath [[NSBundle mainBundle] pathForResource:@"test" ofType:@"js"]

@implementation JSTool

/// 获取 js
+ (NSString *)getJsStr {
    
    NSString *jsStr = [NSString stringWithContentsOfURL:[NSURL fileURLWithPath:jsPath] encoding:NSUTF8StringEncoding error:nil];
    
    return jsStr;
}

+ (void)gg {
    
    //加载 js
    JSContext *context = [[JSContext alloc] init];
    [context evaluateScript:[self getJsStr]];
    
    JSValue *value = [context[@"Function3"] callWithArguments:@[@1, @2]];
    NSLog(@"Function3 - %i", [value toInt32]);
}

@end
